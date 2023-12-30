##==> %*% ==> algebraic multiplication
##==> byrow = T ==> the sequence will be in row wise.
## two matrices must of same size
## arithmetic operations can be done between matrix and scaler value

v1 <- matrix(1:12, byrow = T, nrow=3)
v2 <- matrix(4:15, byrow = T, nrow=3)

print(v1)
print(v2)


v1 <- v1+5
print(v1)


v1 <- v1 - 3
print(v1)


v2 <- v2/0.5
print(v2)

v2<- v2*(0.5)
print(v2)


v3 <- v1^3
print(v3)

########two matrices##########
v <- v1+v2
print(v)

v <- v1 - v2
print(v)

v <- v1/v2
print(v)


v <- v1 * v2
print(v)

v <- v1^v2
print(v)

v <- v1%%v2
print(v)

#linear algebra multiplication
v1 <- matrix(1:12, byrow=T, nrow=4)
v2 <- matrix(2:13, byrow=T, nrow=3)
print(v1)
print(v2)
v <- v1 %*%v2
print(v)

