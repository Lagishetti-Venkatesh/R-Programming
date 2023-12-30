mat1 <- matrix(c("A", "B", "C", 10, 20, 30), nrow = 3, ncol = 2)
mat2 <- matrix(c("X", "Y", "Z", 15, 25, 35), nrow = 3, ncol = 2)

print(mat1)
print(mat2)

# here we are trying to create a  2 dimensional array
ar1 <- array(data=c(mat1, mat2), dim=c(3, 2, 2), dimnames = (list(c('b1', 'b2', 'b3'), c('code', 'price'), c('m1', 'm2'))))
print(ar1)

dim(ar1)
dimnames(ar1)

#What is the code in the second row and first column of m1?
ar1[2,1,'m1']


#What is the price in the third row and second column of m2?
ar1[3, 2,'m2' ]

#Extract the entire second row of m1.
ar1[2, , 'm1']

#Extract the code column of m2.
ar1[ ,1, 'm2']

#Extract the price column of m1.
ar1[, 2,'m1']


#What is the code in the first row and first column of m2?
ar1[1, 1, 'm2']

#What is the price in the second row and second column of m1?
ar1[2, 2, 'm1']

#Extract the last row of m2.
ar1[ 2, ,'m2']

#Extract the last column of m1.
ar1[, 2, 'm1']

#Extract the price in the second row of m2.
ar1[2, 2, 'm2']

