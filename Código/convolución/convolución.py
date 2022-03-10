
def array(size):
    return [0 for x in range(size)] 

def matrix(w,h):
    return [array(w) for y in range(h)] 

def outer(xt,ht):
    foo = matrix(len(xt), len(ht))
    for i, a in enumerate(ht):
        for j, b in enumerate(xt):
            foo[i][j] = a * b
    return foo
        
def suma_diagonales(m):
    h,w = len(m), len(m[0])
    foo = array(h+w-1+2)        # el +2 es para los extremos, que deben ser 0
    for i in range(h):
        for j in range(w):
            foo[j+i+1] += m[i][j] # tiene que enpezar desde el elemento 1
    return foo

def convolucion(xt,ht,fs):
    foo = suma_diagonales(outer(ht,xt))
    foo = list(map(lambda x: x/fs,foo))
    return foo

xt = [1,1,1,1,2,2,2,2,1,1,1,1]
ht = [1,1,1,1,2,2,2,2]
fs = 4

print()
for t,v in enumerate(convolucion(xt,ht,fs)):
    print( "%.2f %.2f"%(t/fs,v) )
