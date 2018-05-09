function y = horner(p,x)
% p contains coefficients of the polynomial in descending order of powers
% y verifies y = polynomial_of_coefficents_p(x) 
y = 0;
for k = length(p):-1:1
y = y*x + p(k);
end
end
