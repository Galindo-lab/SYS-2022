
## formato de vectores validos, ejemplos
##   [3-5i, 2 + 7i, -1+2i]
##   [6 + 1i, 4 + 5i, 3 - 4i]
##   [3,-5,2,4]
##   [-2,-1,-7,9]

function output = magnitud(vector)

  if numel(vector) <= 3 && numel(vector) >= 2 #Un vector solo puede ser R2 o R3

    s_sqrd = 0

    for i = vector

      s_sqrd += i^2

    endfor

    output = sqrt(s_sqrd)

  else

    error("El vector tiene una cantidad invalida de ejes")

  endif

endfunction
