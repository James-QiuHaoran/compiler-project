# Introduction

This is a tiny neural network.

tinn.sc consisting of two parts:
1. Library (essentially functions) including
    - back propagation
    - forward propagation
    - activation function
    - partial difference
    - train

2. A test program that uses the library to train a neural network that
can recognize hand-written digits.
    - The dataset [semeion.data](http://archive.ics.uci.edu/ml/machine-learning-databases/semeion/semeion.data)
    consists of more than 1000 hand-written digits
        - One digit per line
        - Each digit is 16x16 pixels
        - Result is at the end of each line
    - After training, the result is as follows:
        ```bash
        ...
        training iteration: #127
        error rate = 0.000735
        learning rate = 0.279042
        
        ######### Result #########
        Number of correct predictions = 1591
        Number of wrong predictions = 2
        Prediction accuracy = 0.998745
        ```

Note that since c6c does not support 'library import' functionality,
the neural network library and its test program are written in the same file,
i.e. tinn.sc.

# Run

To try the program, just simply run:
```bash
./c6c demos/neural_network/tinn.sc > demos/neural_network/tinn.sc
./nas demos/neural_network/tinn.nas < demos/neural_network/semeion.data
```

Happy coding!

Feel free to use the library to do more cool stuff!

