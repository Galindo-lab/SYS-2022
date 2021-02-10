function distancia = distancia(p1, p2)

  if (numel(p1) == numel(p2) && (numel(p1)) == 2 || numel(p1) == 3)

    sumatoria_cuadrados = 0

    for i = 1:numel(p1)         # evalua la cantidad de dimenciones

      valor = (p2(i) - p1(i))^2
      sumatoria_cuadrados += valor

    endfor

    distancia = sqrt(sumatoria_cuadrados)

  else

    error("vectores invalidos")

  endif

endfunction
