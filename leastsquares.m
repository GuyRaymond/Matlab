function x = leastsquares(A,y)
% least squares with QR algorithm
[m,n] = size(A);
[Q,R] = myqr(A);
z = transpose(Q)*y';
x = zeros(n,1);
x(n) = z(n)/R(n,n);
for k = n-1:-1:1
x(k) = (z(k) - dot(R(k,k+1:n),x(k+1:n))/ R(k,k);
end
end
