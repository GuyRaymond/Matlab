function x = leastsquares(A,y)
% least squares with QR algorithm
[m,n] = size(A);
[Q,R] = myqr(A);
y1 = transpose(Q)*y;
y1 = y(1:n);
R1 = R(1:n,:);
x = zeros(n,1);
x(n) = y(n)/R1(n,n);
for k = n-1:-1:1
x(k) = (y(k) - dot(R1(k,k+1:n),x(k+1:n))/ R1(k,k);
end
end
