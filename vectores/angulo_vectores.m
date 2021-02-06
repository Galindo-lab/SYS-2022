
## formato de vectores validos, ejemplos
##   [3-5i, 2 + 7i, -1+2i]
##   [6 + 1i, 4 + 5i, 3 - 4i]
##   [3,-5,2,4]
##   [-2,-1,-7,9]

function output = angulo_vectores(u,v)

  ## Formula qe se aplica para calclar el producto punto
  ##
  ##             u * v
  ## cos x = -------------
  ##          ||u|| ||v||

  p_punto = producto_punto(u,v)

  magnitud_u = magnitud(u)
  magnitud_v = magnitud(v)

  cos_angulo = p_punto / (magnitud_u * magnitud_v)

  angulo_radianes = acos(cos_angulo)

  output = angulo_radianes

  ## NOTE
  ## Cuando el coseno es positivo, el ángulo es agudo.
  ## Cuando el coseno es cero, el ángulo es recto.
  ## Cuando el coseno es negativo, el ángulo es obtuso.

endfunction
