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

// 2D floating point array of input
array all_in[rows][nips];
// 2D floating point array of target
array all_tg[rows][nops];

for (row = 0; row < rows; row = row + 1) {
    cols = nips + nops;
    for (col = 0; col < cols; col = col + 1) {
        geti(val);
        if (col < nips) {
            all_in[row][col] = val;
        } else {
            all_tg[row][col - nips] = val;
        }
    }
}

// Only support one hidden layer so there are two biases
nb = 2;
nw = nhid * (nips + nops);
array w[nw];
x = w + nhid * nips;
array b[nb];
array h[nhid];
array o[nops];

// define functions

err(a, b) {
    return 0.5 * (a - b) * (a - b);
}

// partial derivative error
pd_err(a, b) {
    return a - b;
}

// compute total error of target to output.
tot_err(tg, o, size) {
    sum = 0.0;
    for (i = 0; i < size; i = i + 1;)
        sum = sum + err(tg[i], o[i]);
    return sum;
}

max(a, b) {
    if (a > b) {
        return a;
    } else {
        return b;
    }
}

// ReLu activation function.
activate(a) {
    return max(0, x);
}

// returns partial derivative of activation function
pd_activate(a) {
    return 1;
}

// Performs back propagation.
backward_prop() {
    for (i = 0; i < nhid; i = i + 1;) {
        sum = 0.0;
        // Calculate total error change with respect to output.
        for (j = 0; j < nops; j = j + 1;) {
            a = pd_err(o[j], tg[j]);
            b = pd_activate(o[j]);
            sum = sum + a * b * x[j * nhid + i];
            // Correct weights in hidden to output layer.
            x[j * nhid + i] = x[j * nhid + i] - rate * a * b * h[i];
        }
        // Correct weights in input to hidden layer.
        for (j = 0; j < nips; j = j + 1;) {
            w[i * nips + j] = w[i * nips + j] - rate * sum * pd_activate(h[i]) * in[j];
        }
    }
}

// Performs forward propagation.
forward_prop() {
    // Calculate hidden layer neuron values.
    for (i = 0; i < nhid; i = i + 1;) {
        sum = 0.0;
        for (j = 0; j < nips; j++;) {
            sum = sum + in[j] * w[i * nips + j];
        }
        h[i] = activate(sum + b[0]);
    }
    // Calculate output layer neuron values.
    for (i = 0; i < nops; i = i + 1;)
    {
        sum = 0.0;
        for(j = 0; j < nhid; j = j + 1)
            sum = sum + h[j] * x[i * nhid + j];
        o[i] = activate(sum + b[1]);
    }
    return o;
}

randomize() {
    // nas does not support random number, so we initialize them to a fixed number
    for (i = 0; i < nw; i = i + 1;) {
        w[i] = 0.1;
    }
    for (i = 0; i < nb; i = i + 1;) {
        b[i] = 0.1;
    }
}

// Returns an output prediction given an input.
predict() {
    forward_prop();
}

// Train a neural network
train() {
    forward_prop();
    backward_prop();
    return tot_err(tg, o, nops);
}

randomize();

// start training
for (i = 0; i < iterations; i = i + 1;) {
    shuffle();
    error = 0.0;
    for (j = 0; j < rows; j = j + 1) {
        in = all_in[j];
        tg = all_tg[j];
        error = error + train();
    }
    puts_("error rate = ");
    putd(error realdiv rows);
    puts_("learning rate = ");
    putd(rate);
    rate = rate * anneal;
}
