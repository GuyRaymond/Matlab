function [Q,R] = givensqr(A)
% QR decomposition with the method of Givens rotations
Q = eye(m,m);
R = A(:,:);
function G(i,j,
for j = 1:n
for i = m:-1:j+1
r = hypot(R(i,j),R(i-1,j));
c = R(i-1,j)/r;
s = R(i,j)/r;
G = [c s;-s c];
tG = [c -s;s c];
R(i-1:i,j:n) = tG*R(i-1:i,j:n); 
Q(i-1:i,:) = Q(i-1:i,:)*G; 
end
end
