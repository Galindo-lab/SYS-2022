
function output = magnitud(vector)

  if numel(vector) <= 3 && numel(vector) >= 2

    s_sqrd = 0

    for i = vector

      s_sqrd += i^2

    endfor

    s_sqrd = sqrt(s_sqrd)

  else

    error("El vector tiene una cantidad invalida de ejes")

  endif

endfunction
