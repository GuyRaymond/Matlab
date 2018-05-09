function [Q,R] = myqr(A)
% QR decomposition with the method of Householder reflections
[m,n] = size(A);
Q = eye(m,m);
R = A(:,:);
rho = -1.0;
for k = 1:min(n-1,m)
    u = R(k:n,k);
    a = rho*norm(u);
    u(1) = u(1) - a;
    u = u/norm(u);
    v = 2*u*transpose(u);
    R(k:n,k:n) = R(k:n,k:n) - v*R(k:n,k:n);
    if 1 == k
        Q(k:n,k:n) = Q(k:n,k:n) - v*Q(k:n,k:n);
    else
        p = k-1;
        Q(k:n,1:p) = Q(k:n,1:p) - v*Q(k:n,1:p);
        Q(k:n,k:n) = Q(k:n,k:n) - v*Q(k:n,k:n);
    end
end
Q = transpose(Q);
end
