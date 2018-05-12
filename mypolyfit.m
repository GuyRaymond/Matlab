function p = mypolyfit(x,y,n)
% We must have : length(x) == length(y) and n+1 <= length(x)
m = length(x); 
A = ones(m,n+1);
for i = 1:m
    for j = n:-1:1
        A(i,j) = A(i,j+1)*x(i);
    end
end
p = leastsquares(A,y);
end
