function H = myhess(A)
% Hessian matrix of A
H = A(:);
n = length(A);
for k = 1:n-2
    u = H(k+1:n,k);
    rho = -1;
    if u(1) < 0
        rho = 1;
    end
    a = rho*norm(u);
    u(1) = u(1) - a;
    u = u/norm(u);
    H(k+1:n,k:n) = H(k+1:n,k:n) - 2*u*(transpose(u)*H(k+1:n,k:n));
    H(1:n,k+1:n) = H(1:n,k+1:n) - 2*(H(1:n,k+1:n)*u)*transpose(u);
end
end
