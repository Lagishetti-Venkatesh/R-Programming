#in R programming  the indexing starts from 1 whereas in other programming languages indexing starts from 0.
#names(vector) <- names ==> for the respective respective vector the names will be assigned 
v1 <- 1:10
v2 <- c("apple", "banana", "cherry", "date", "elderberry", "fig", "grape", "honeydew", "imbe", "jackfruit")

print(v1[3])
print(v1[1])
print(v2[3])
print(v2[9])


print(v2[2:7])

# you can pass the vector of indexes
print(v2[c(2, 5, 7, 9)])

# appending the names to the character vector
names(v2) <- v1
print(v2)

print(v2[3])
print(v2[9])


print(v2[2:7])
print(v2[c(2, 5, 7, 9)])
