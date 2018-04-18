function [Q,R] = gqr(A)
[m,n] = size(A);
Q = eye(m,m);
R = A;
for k = 1:min(n-1,m)
    %u = zeros(n-k+1,1);
    u = R(k:n,k);
    rho = -1.0;
    a = rho*norm(u);
    u(1) = u(1) - a;
    u = u/norm(u);
    U = 2*u*transpose(u);
    R(k:n,k:n) = R(k:n,k:n) - U*R(k:n,k:n);
    if 1 == k
        Q(k:n,k:n) = Q(k:n,k:n) - U*Q(k:n,k:n);
    else
        p = k-1;
        Q(k:n,1:p) = Q(k:n,1:p) - U*Q(k:n,1:p);
        Q(k:n,k:n) = Q(k:n,k:n) - U*Q(k:n,k:n);
    end
end
Q = transpose(Q);
end