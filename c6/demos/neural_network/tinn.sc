// Some components are modified from https://github.com/glouw/tinn

debugMode = 0;

// prepare

// number of inputs
nips = 256;
// number of outputs
nops = 10;
rate = 1.0;
nhid = 28;
anneal = 0.99;
iterations = 128;

// load training set
puts("please enter number of samples");
geti(rows);
maxRows = 2000;
if (rows > maxRows) {
    puts("FATAL: no more than 2000 samples!");
}

// 2D floating point array of input
array allIn[2000][256]; // maxRows x nips
// 2D floating point array of target
array allTg[2000][10]; // maxRows x nops

cols = nips + nops;
for (row = 0; row < rows; row = row + 1;) {
    for (col = 0; col < cols; col = col + 1;) {
        geti(val);
        if (col < nips) {
            allIn[row][col] = val;
        } else {
            allTg[row][col - nips] = val;
        }
    }
}

puts("finish loading!");

// Only support one hidden layer so there are two biases
nb = 2;
nw = nhid * (nips + nops);
array w[7448]; // nhid * (nips + nops)
x = w + nhid * nips;
array bias[2]; // nb
array h[28]; // nhid
array o[10]; // nops

// define functions

err(a, b) {
    return 0.5 * (a - b) * (a - b);
}

// partial derivative error
pdErr(a, b) {
    return a - b;
}

// compute total error of target to output.
totErr(tg) {
    if (debugMode == 1)
        puts("calculate total error");
    sum = 0.0;
    for (errIt = 0; errIt < nops; errIt = errIt + 1;) {
        if (debugMode == 1) {
            puts_("o[");
            puti_(errIt);
            puts_("]=");
            putd(o[errIt]);
            puts_("tg[");
            puti_(errIt);
            puts_("]=");
            putd(*(tg + errIt));
        }
        sum = sum + err(*(tg + errIt), o[errIt]);
    }
    return sum;
}

// Returns approximate value of e^x
// using sum of first n terms of Taylor Series
exp(x) {
    n = 100; // use first n terms

    sum = 1.0; // initialize sum of series

    for (i = n - 1; i > 0; i = i - 1;)
        sum = 1 + (x * sum) realdiv i;

    return sum;
}

// sigmoid activation function
activate(a) {
    if (debugMode == 1) {
        puts_("sigmoid input =");
        putd(a);
        puts_("sigmoid output =");
        putd(1.0 realdiv (1.0 + exp(-a)));
    }
    return 1.0 realdiv (1.0 + exp(-a));
}

// returns partial derivative of activation function
pdActivate(a) {
    return a * (1.0 - a);
}

// print out weights
printWeights() {
    puts("printing out weights...");
    for (i = 0; i < nw; i = i + 1;) {
        putd(w[i]);
    }
    puts("finish printing out weights");
}

// Performs back propagation.
backwardProp(in, tg) {
    for (i = 0; i < nhid; i = i + 1;) {
        sum = 0.0;
        // Calculate total error change with respect to output.
        for (j = 0; j < nops; j = j + 1;) {
            a = pdErr(o[j], *(tg + j));
            b = pdActivate(o[j]);
            sum = sum + a * b * *(x + j * nhid + i);
            // Correct weights in hidden to output layer.
            *(x + j * nhid + i) = *(x + j * nhid + i) - rate * a * b * h[i];
        }
        // Correct weights in input to hidden layer.
        for (j = 0; j < nips; j = j + 1;) {
            w[i * nips + j] = w[i * nips + j] - rate * sum * pdActivate(h[i]) * *(in + j);
        }
    }
}

// Performs forward propagation.
forwardProp(in) {
    if (debugMode == 1)
        puts("forward propagation");
    // Calculate hidden layer neuron values.
    for (i = 0; i < nhid; i = i + 1;) {
        sum = 0.0;
        for (j = 0; j < nips; j = j + 1;) {
            sum = sum + *(in + j) * w[i * nips + j];
        }
        h[i] = activate(sum + bias[0]);
        if (debugMode == 1) {
            puts_("h[");
            puti_(i);
            puts_("]=");
            putd(h[i]);
        }
    }
    // Calculate output layer neuron values.
    for (i = 0; i < nops; i = i + 1;) {
        sum = 0.0;
        for (j = 0; j < nhid; j = j + 1;)
            sum = sum + h[j] * *(x + i * nhid + j);
        o[i] = activate(sum + bias[1]);
        if (debugMode == 1) {
            puts_("o[");
            puti_(i);
            puts_("]=");
            putd(o[i]);
        }
    }
}

randomize() {
    // simulate a normal distribution
    for (i = 0; i < nw; i = i + 1;) {
        w[i] = rand(100000) * (1.0 realdiv 100000) - 0.5;
    }
    for (i = 0; i < nb; i = i + 1;) {
        bias[i] = rand(100000) * (1.0 realdiv 100000) - 0.5;
    }
}

// Returns an output prediction given an input.
predict(in) {
    forwardProp(in);
}

// Train a neural network
train(in, tg) {
    forwardProp(in);
    // printWeights();
    backwardProp(in, tg);
    // printWeights();
    return totErr(tg);
}

// generate a random integer [0, n)
random(n) {
    return rand(n);
}

randomize();

// start training
for (k = 0; k < iterations; k = k + 1;) {
    puts_("training iteration: #");
    puti(k);
    error = 0.0;
    for (rowIter = 0; rowIter < rows; rowIter = rowIter + 1;) {
        in = allIn[rowIter];
        tg = allTg[rowIter];
        error = error + train(in, tg);
    }
    puts_("error rate = ");
    putd(error realdiv rows);
    puts_("learning rate = ");
    putd(rate);
    rate = rate * anneal;
}

correctCount = 0;

// do prediction
for (iter = 0; iter < rows; iter = iter + 1;) {
    if (debugMode == 1) {
        puts_("Test case #");
        puti(iter);
    }

    in = allIn[iter];
    tg = allTg[iter];
    predict(in);

    // get real result
    max = 0;
    realValue = 0;
    for (k = 0; k < nops; k = k + 1;) {
        if (*(tg + k) > max) {
            max = *(tg + k);
            realValue = k;
        }
    }
    // get predicted result
    max = 0;
    predictValue = 0;
    for (k = 0; k < nops; k = k + 1;) {
        if (o[k] > max) {
            max = o[k];
            predictValue = k;
        }
    }

    if (realValue == predictValue)
        correctCount = correctCount + 1;

    // print out result vectors
    if (debugMode == 1) {
        puts_("Real value = ");
        puti(realValue);
        puts_("Predicted value = ");
        puti(predictValue);
        puts("Real value:");
        for (k = 0; k < nops; k = k + 1;) {
            putd(*(tg + k));
        }
        puts("Predicted value:");
        for (k = 0; k < nops; k = k + 1;) {
            putd(o[k]);
        }
    }
}

puts("######### Result #########");
puts_("Number of correct predictions = ");
puti(correctCount);
puts_("Number of wrong predictions = ");
puti(rows - correctCount);
puts_("Prediction accuracy = ");
putd(correctCount realdiv rows);
