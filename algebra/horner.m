


function [output] = horner(x, coef)
  output = [];

  if coef < 2
    ## En este caso es más eficiente hacer una igualacion
    warnig("La catidad de coeficientes es menor a dos")

  endif

  for i = 1:numel(x)            #con este for se pueden pasar arreglos como x

    r = 0;

    for j = coef
      r = r * x(i) + j

    endfor

    output(i) = r

  endfor
endfunction
