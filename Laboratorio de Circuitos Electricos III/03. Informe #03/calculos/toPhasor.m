function [p] = toPhasor(label, z)
    printf(
        "%s = %.2f ∠ %.2f\n",
        label,
        sqrt(power(real(z), 2) + power(imag(z), 2)),
        atan2d(imag(z),real(z))
    );
endfunction

