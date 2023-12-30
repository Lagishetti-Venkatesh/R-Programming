
v <- 1:20
matrix(v)

v <- matrix(v, byrow=T, nrow=5) # sequence data in row wise

v <- matrix(v, byrow=F, nrow=5) # sequence data a column wise




v3 <- c("apple", "banana")
v4 <- c("cherry", "date", "elderberry", "fig")



rownames(v) <- v4
colnames(v) <- v4

print(v)
