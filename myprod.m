function rs = myprod(ps,qs)

p = length(ps);
q = length(qs);
pq = p+q-1;
n = 1;

while (n < pq)
    n = n*2;
end

ps = myfft([ps zeros(1,n - p)]);
qs = myfft([qs zeros(1,n - q)]);
rs = myifft(ps .* qs);
rs = rs(1:pq);
end