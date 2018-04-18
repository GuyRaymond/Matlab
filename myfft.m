function x = myfft(x)
  n = length(x);
  % n doit etre une puissance de 2
  if (1 < n)
      even = myfft(x(1:2:end));
      odd  = myfft(x(2:2:end));
      mid = floor(n/2);
      for k = (1:mid)
          ok = -2*pi*(k-1)/n;
          t  = complex(cos(ok),sin(ok))*odd(k);
          x(k) = even(k) + t;
          x(k+mid) = even(k) - t;   
      end
  end
end