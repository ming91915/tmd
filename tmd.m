function [x1,x2] = tmd(w1, w2, dr1, dr2, mu, w)

b = w/w1;
T = w2/w1;

Zsqr = (b^4/T^2 - b^2/T^2 - b^2*(1+mu) - 4 *dr1*dr2*b^2/T + 1)^2 ...
    + (2*dr1*b^3/T + 2*dr2*b^3/T*(1+mu) - 2*dr2*b/T - 2*dr1*b)^2;

Z = sqrt(Zsqr);

x1 = sqrt( (1 - b^2/T^2)^2 + 4*(dr2*b/T)^2 ) / Z;
x2 = sqrt( 1 + 4*(dr2*b/T)^2 ) / Z;

end
    

