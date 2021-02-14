
## formato de vectores validos, ejemplos
##   [3-5i, 2 + 7i, -1+2i]
##   [6 + 1i, 4 + 5i, 3 - 4i]
##   [3,-5,2,4]
##   [-2,-1,-7,9]

function producto_p = producto_punto(u,v)

  ## Formula que se aplica para calcular el producto punto:
  ## ___
  ## \     ____
  ## /__   u(k) * v(k)
  ## k E 3

  if numel(u) == numel(v)

    r = 0

    for k = 1:numel(u)

      r += conj(u(k)) * v(k)

    endfor

    producto_p = sqrt(r)
  else
    error(sprintf(
              "los vectores son de diferente dimensión:\n - u: %d\n - v: %d"
                ,numel(u), numel(v)))
  endif
endfunction
