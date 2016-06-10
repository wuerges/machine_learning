function y = gradient_predict (xi, ts, xsub, xmul)
  y = [1 (xi - xsub) ./ xmul] * ts;
endfunction