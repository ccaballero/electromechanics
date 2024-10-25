% r: radius
% theta: angle in degrees
function [z] = phasor(r, theta)
    x = r * cosd(theta);
    y = r * sind(theta);

    z = x + (i * y);
endfunction

