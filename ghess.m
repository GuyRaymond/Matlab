function A = ghess(A)
n = length(A)
for k = 1:n-2
    u = zeros(n-k,1);
    u(:) = A(k+1:n,k);
    rho = -1;
    a = rho*norm(u)
    u(1) = u(1) - a;
    u = u/norm(u);
    A(k+1:n,k:n) = A(k+1:n,k:n) - 2*u*(transpose(u)*A(k+1:n,k:n));
    A(1:n,k+1:n) = A(1:n,k+1:n) - 2*(A(1:n,k+1:n)*u)*transpose(u);
end
end