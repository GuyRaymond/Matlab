function x = myifft(x)
  x = conj(myfft(conj(x)))/length(x);
end