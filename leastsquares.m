function x = leastsquares(A,y)
% least squares with QR algorithm
[m,n] = size(A);
[Q,R] = myqr(A);
v = zeros(length(y),1);
v(:) = y(:); % to be more flexible with to enter a row or a column with y
z = transpose(Q)*v;
x = zeros(n,1);
x(n) = z(n)/R(n,n);
for k = n-1:-1:1
x(k) = (z(k) - dot(R(k,k+1:n),x(k+1:n)))/ R(k,k);
end
end
