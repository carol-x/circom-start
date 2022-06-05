pragma circom 2.0.0; 

template Num2Bits (nBits) {
    signal input in;
    signal output b[nBits]; 
    var num = 0;

    for (var i = 0; i < nBits; i++) {
        b[i] <-- (in >> i) & 0x1;
        // a check in solution
        // b[i] * (b[i] - 1) === 0;

        // compute the overall value for b
        num += b[i] * (2 ** i);
    }
    num === in; 
}

component main = Num2Bits(2);