
def array(size):
    return [0 for x in range(size)] 

def matrix(w,h):
    return [array(w) for y in range(h)] 

def tabla(xt,ht):
    foo = zero(len(xt), len(ht))
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
    foo.append(0)
    foo.insert(0,0)
    return foo

xt = [1,2,3]
ht = [-2,1,-1,-1]
fs = 4

a = tabla(ht,xt)
b = hamilton(a)

print("\n+------+------+")
print("|  t   | y(t) |")
print("+------+------+")
for i,v in enumerate(b):
    print( "| %.2f | %.2f |"%(i*1/fs,v/fs) )
print("+------+------+")
