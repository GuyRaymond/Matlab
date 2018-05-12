function x = tridiagonal(a,b,c,y)
% a, b and c must have the same length
n = length(a);

% a(1) and c(n) must be zero (a(1) == 0 and c(n) == 0)
x = zeros(size(y));
rb = b(:);
ry = y(:);

for k = 2:n
    m = a(k)/rb(k-1);
    rb(k) = rb(k) - m*c(k-1);
    ry(k) = ry(k) - m*ry(k-1);
end

x(n) = ry(n)/rb(n);
for k = n-1:-1:1
    x(k) = (ry(k) - c(k)*x(k+1))/rb(k);
end
end
