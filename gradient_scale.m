function [x, xsub, xmul] = gradient_scale (x)
  
  xsub = min(x);
  xmul = sum(x);
  
  x = x - min(x);
  x = x ./ sum(x);
  
endfunction