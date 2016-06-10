function [ts, cs] = gradient_descent (a, x, y)
  #x = [2104 5 1 45; 1416 3 2 40; 1534 3 2 30; 852 2 1 36];
  #y = [460; 232; 315; 178];

  #x = x - min(x);
  #x = x ./ sum(x);
  
  #y = y / sum(y);
  
  
  m = length(y);

  xs = [ones(m ,1) x];

  ts = zeros(m+1, 1);

  cs = [];  
  
  for iter = 1:10000
    hs = xs * ts;
    ts = ts - (a/m) * ((hs - y)' * xs)';
    cs = [cs sum((xs * ts - y).^2)];
  end

endfunction