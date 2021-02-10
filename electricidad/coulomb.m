


# HACK: Añade los scripts en los subfolders a este archivo
addpath(genpath( fileparts(mfilename('fullpath')) ))


# calcula la ley de Coulomb cuando ya se cuenta con la distancia determinada
# NOTE: las cargas deben estar en Coulombs y la distancia en metros
# TODO: Añadir explicacion para calcular mas de dos cuerpos

#{
           q1 * q2
 F_1 = K -----------
             r^2
#}

function fuerza_newtons = coulomb(r, q1, q2, k = 8.987551e9)

  r_sq = r^2                    # al cuadrado

  q1byq2 = q1 * q2

  fuerza_newtons = k * ( q1byq2 / r_sq )

endfunction

# calcula la ley de Coulomb cuando solo se cuentan con los puntos cartecianos
# formato [x,y] ó [x,y,z]

function fuerza_newtons = coulomb_cart(punto_1, punto_2, q1, q2, k = 8.987551e9)

  fuerza_newtons = coulomb(distancia(punto_1,punto_1))

endfunction

# TODO: añadir una funciona para calcular la ley de Coulomb cuando solo se
# tienen los vectores
