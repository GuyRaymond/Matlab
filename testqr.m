% A = [ 12 (-51) 4 ; 6 167 (-68);  (-4) 24 (-41)];
A = [0.8147   0.0975   0.1576;0.9058 0.2785 0.9706; 0.1270 0.5469 0.9572; 0.9134 0.9575 0.4854; 0.6324 0.9649 0.8003];
[Q,R] = qr(A) % with matlab implemention
[Q,R] = householderqr(A) % with Householder reflections
[Q,R] = givensqr(A) % with Givens rotations
