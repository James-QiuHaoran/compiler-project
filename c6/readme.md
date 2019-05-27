# A simple programming language - c6's compiler

## Introduction

c6c - compiler -> [`make c6c`]
nas - the assembler for a simulated stack machine [`make nas`]

Or, you can run `make all` to make all executables.

## Features

This is a compiler for a simple programming language. c6 is based on c5, which has the following features:

- Constants and variables (global & local);
  - Demo: test/ta01.sc, test/tc01.sc, test/tc02.sc, test/tc03.sc, test/tc04.sc, test/tc12.sc;
- Arithmetic compuations (`+`, `-`, `*`, `/`);
  - Demo: test/tc05.sc, test-c6/tc02.sc;
- Logic expression (`AND`, `OR`, `>`, `<`, etc);
  - Demo: test/tc05.sc;
- Control flow (`for`, `while`, `if`);
  - Demo: test/tc05.sc, test/tc06.sc;
- Functions (could be recursive);
  - Demo: test/ta02.sc, test/tc07.sc, test/tc08.sc, test/tc09.sc, test/tc10.sc, test/tc11.sc, test-c6/tc06.sc;
- I/O (`puts`, `puts_`, `putc`, `putc_`, `puti`, `puti_`);
  - Demo: test/ta03.sc, test-c6/tc04.sc, test-c6/tc05.sc;

In addition, these features have been added to c6:

- Control flow: `break` and `continue`; \[Bonus\]
  - Demo: test/tc06.sc;
- String functioning as other normal variables (assignment, comparison, print);
  - Demo: test-c6/tc01.sc;
- Multi-dimensional arrays (any # of dimensions);
  - Demo: test-c6/tc02.sc, test-c6/tc03.sc, test-c6/tc04.sc, test-c6/tc05.sc, test-c6/tc06.sc, test-c6/tc07.sc;
- String concatenation; \[Bonus\]
  - Demo: test-c6/tc05.sc;
- Reference (`*`) & Dereference (`&`); \[Bonus\]
  - Demo: test-c6/tc08.sc;
- Floating number 'putd' and real division 'realdiv'; \[Bonus\]
  - Demo: test-c6/tc09.sc, test-c6/tc10.sc
  - nas program is modified to support floating number operations with backward compatibility;
- Random number 'rand(n)'; \[Bonus\]
  - Demo: test-c6/tc11.sc;
  - nas program is modified to support random number functionality;

## Environment

All the implementation, test cases, sample programs, and demos are developed under Ubuntu 18.04.1 LTS.

## Example programs

Example programs are under `demos`, `sample_progs`, `test`, `test-c6` folders

## Demos

There are two demos in the directory `demos`:

- Tic-Tac-Toe: an interactive game application (changeable board size);
- Neural Network
    - Consisting of a library and a test program (hand-written digit recognition);
    - For details, refer to `demos/neural_network/readme.md`;

## To run the compiler

```
./c6c fact.sc >fact.nas
./nas fact.nas
```

Run `make clean` to remove all intermediate or auxiliary files.

## Tests

There are 26 tests in the `test` and `test-c6` directory. To run them, simply execute `./run_tests.sh`. But make sure you've built the executables `c6c` and `nas`.

## Contact

- James, Qiu Haoran (jamesqiu@connect.hku.hk)
- LI, Boxuan (liboxuan@connect.hku.hk)
- Caspar, Chen Cheng (susume@connect.hku.hk)
