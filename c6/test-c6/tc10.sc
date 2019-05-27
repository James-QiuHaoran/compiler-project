// Use taylor expansion to approximate exponent

exp(x) {
    n = 100; // use first n terms

    sum = 1.0; // initialize sum of series

    for (i = n; i > 0; i = i - 1;) {
        sum = 1 + (x * sum) realdiv i;
    }

    return sum;
}

putd(exp(-12.5));