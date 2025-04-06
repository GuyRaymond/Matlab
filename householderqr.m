function [Q,R] = householderqr(A)
% QR decomposition with the method of Householder reflections
[m,n] = size(A);
Q = eye(m,m);
R = A(:,:);
for k = 1:n
    u = R(k:m,k);
    rho = -1;
    if u(1) < 0
        rho = 1;
    end
    a = rho*norm(u);
    u(1) = u(1) - a;
    u = u/norm(u);
    v = 2*u*transpose(u);
    R(k:m,k:n) = R(k:m,k:n) - v*R(k:m,k:n);
    Q(k:m,1:m) = Q(k:m,1:m) - v*Q(k:m,1:m);
end
Q = transpose(Q);
