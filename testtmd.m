%TMD Design for Buildings

clear all; close all;

b = 0:0.01:2;
dr1 = 0.0;
dr2 = 0.0;
mu = 0.1;
T = 0.909;

t1 = 1;
w1 = 2*pi()/t1;
w2 = T*w1;
w = b*w1;

x1 = zeros(length(b), 1);
x2 = zeros(length(b), 1);

for i = 1:length(b)
    [x1(i), x2(i)] = tmd(w1, w2, dr1, dr2, mu, w(i));
end

plot(b, x1); axis([0 max(b) 0 10]);
