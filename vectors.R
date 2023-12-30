#a vector is a single dimensional data having single data type

#numerical vector
vec_num <- c(23, 12, 1, 2, 3, 4, 5)
class(vec_num)
print(vec_num)

#character vector
vec_char <- c("Alice", "Bob", "Charlie", "David")
class(vec_char)
print(vec_char)

#logical vector
vec_logic = c(T, F, F, T, T, T, F)
class(vec_logic)
print(vec_logic)

#when logic and numeric is combined
vec_nl = c(T, F, 12, 34, 56, 77)
class(vec_nl)
print(vec_nl)

#when numeric and character is combined
vec_nc = c('Emma', 'Frank', 90, 29, 70)
class(vec_nc)
print(vec_nc)

my_vector <- c(2, 4, 6, 8, 10)

# when character and logical vector are kept together
vec_lc = c('Emma', 'Frank', T, F, T)
names(vec_lc) <- my_vector
class(vec_lc)
print(vec_lc)

