
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
    foo = array(h+w-1)
    for i in range(h):
        for j in range(w):
            foo[j+i] += m[i][j]
    return foo

def convolucion(xt,ht,fs):
    foo = suma_diagonales(outer(ht,xt))
    foo = list(map(lambda x: x/fs,foo))
    foo.append(0)
    foo.insert(0,0)
    return foo

xt = [1,1,1,1,2,2,2,2,1,1,1,1]
ht = [1,1,1,1,2,2,2,2]
fs = 4

print()
for t,v in enumerate(convolucion(xt,ht,fs)):
    print( "%.2f %.2f"%(t/fs,v) )
