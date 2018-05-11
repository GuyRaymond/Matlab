% A = [ 12 (-51) 4 ; 6 167 (-68);  (-4) 24 (-41)];
A = [0.8147   0.0975   0.1576;0.9058 0.2785 0.9706; 0.1270 0.5469 0.9572; 0.9134 0.9575 0.4854; 0.6324 0.9649 0.8003];
[Q1,R1] = qr(A) % with matlab implemention
A1 = Q1*R1
Q1*transpose(Q1)
[Q2,R2] = householderqr(A) % with Householder reflections
A2 = Q2*R2
Q2*transpose(Q2)
[Q3,R3] = givensqr(A) % with Givens rotations
A3 = Q3*R3
Q*transpose(Q)

