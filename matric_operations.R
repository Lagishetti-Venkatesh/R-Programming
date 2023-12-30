# matrix(vector, byrow = T, nrow = numerical),
#rownames(matrix) <- vector of row names
#colnames(matrix) <- vector of col names
#rowsums(matrix) <- sum values in row wise.
#colsums(matrix) <- sum values in column wise.
#rowmeans(matrix)<- mean values in a row wise.
#colmeans(matrix)<- mean values in column wise
#rbind(old_matrix, vector having same row size) <- will return new matrix by adding the old and new vector having the row name as a vector name
#cbind(old_matrix, vector having same column size) <- will return new matrix by adding the old and new vector having the col name as a vector name

rupees <- c(100, 200, 500, 1000, 2000)
print(rupees)
dollars <- rupees * 0.014  # Assuming 1 INR = 0.014 USD
print(dollars)


v <- c(rupees, dollars)

print(v)

v<- matrix(v, byrow =T , nrow=2)
print(v)

rownames(v) <- c('India', 'USA')
colnames(v) <- c('a', 'b', 'c', 'd', 'e')

print(v)
print(rowSums(v))
print(colSums(v))

print(rowMeans(v))
print(colMeans(v))

cad <-  rupees * 0.018 
print(cad)

v_new <- rbind(v, cad)
print(v_new)

avg <- rowMeans(v_new)
print(avg)

v_new <- cbind(v_new, avg)
print(v_new)

