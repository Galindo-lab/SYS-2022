
# TODO: Optimiazar
# valid input : [ 96, -91, -60 ; 27, -91, 1 ; 1 , 1 , 1 ]
# Sarrus solo funciona con matrices 3*3

function [sarrus_eq] = sarrus( A )

  sarrus_eq             = [1,1,1]
  diagonal_derecha      = [1,1,1]
  diagonal_izquierda    = [1,1,1]

  for row = 1 : 3

    for column = 1 : 3

      inc = column + row      #incremento en diagonal

      if inc>3

        inc = mod(inc,3)

        if inc == 0
          inc = 1
        endif

      endif

      diagonal_derecha(column) *= A(row, inc)

# ------------------------------------------------------

      dec = column - row      # decremento diagonal

      if dec < 1

        dec = 3 + dec

      endif

      diagonal_izquierda(column) *= A(row, dec)

    endfor

  endfor

  sarrus_eq = diagonal_derecha - diagonal_izquierda

endfunction
