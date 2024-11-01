function [p] = phase(z)
    p = atan2d(imag(z),real(z));
endfunction

