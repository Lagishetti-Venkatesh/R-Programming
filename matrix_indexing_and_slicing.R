
##matrix[row range(x1:x2), column range(y1:y2)]

# you can even pass the vector of indexes to select the particular index values
print(1:10)
v1 <- matrix(1:50, byrow = T, nrow = 5)
v1

print(v1[c(3,5),1:2])

print(v1[c(3, 5),])

print(v1[,c(9, 10)])
