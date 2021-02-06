
function [output] = angulo_vectores(u,v)
  p_punto = producto_punto(u,v)

  magnitud_u = magnitud(u)
  magnitud_v = magnitud(v)

  cos_angulo = p_punto / (magnitud_u * magnitud_v)

  angulo_radianes = acos(cos_angulo)

  output = angulo_radianes

  ## NOTE
  ## Cuando el coseno es positivo, el ángulo es agudo.
  ## Cuando el coseno es cer, el ángulo es recto.
  ## Cuando el coseno es negativo, el ángulo es obtuso.

endfunction
