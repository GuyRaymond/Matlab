function [Q,R] = householderqr(A)
% QR de decomposition with the method of Householder reflections
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
    if 1 == k
        Q(k:m,k:m) = Q(k:m,k:m) - v*Q(k:m,k:m);
    else
        p = k-1;
        Q(k:m,1:p) = Q(k:m,1:p) - v*Q(k:m,1:p);
        Q(k:m,k:m) = Q(k:m,k:m) - v*Q(k:m,k:m);
    end
end
Q = transpose(Q);
