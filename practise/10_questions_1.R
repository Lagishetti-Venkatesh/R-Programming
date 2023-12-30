#list
#Data Frame
#matrix multiplication.

#1
a <- as.numeric(readline("Enter number:"))
b <- as.numeric(readline("Enter number: "))
print(a)
c <- a+b
print(c)


#2
my_var <- 42
print(my_var)

#3
v <- 1:5
print(sum(v))

#4
if (c %% 2 == 0){
  print("Even")
}else{
  print("odd")
}

#5
for(i in 1:5){
  print(i*3)
}

#6
factorial <- function(x){
  value = 1
  for (i in 1:x){
    value = value *i 
  }
  return (value)
}

factorial(10)


#7

my_list <- list(
  favorite_colors = c("blue", "green", "red"),
  favorite_numbers = c(7, 42, 101),
  personal_info = c("YourName", "YourAge")
)
print(my_list$personal_info)
print(my_list$favorite_colors)
print(my_list$favorite_numbers)

vector <- c(1:9)

#8
# Create a data frame
data <- data.frame(
  Name = c("Alice", "Bob", "Charlie"),
  Age = c(25, 30, 22)
)

# Print the entire data frame
print(data)


#9
matrix_data <- matrix(vector, byrow=T, nrow = 3)
print(matrix_data)

#10
mul <- matrix_data %*% matrix_data

print(mul)

#11
print(sum(matrix_data))
print(sum(mul))

#12
mean_cal <- function(x){
  mean <- mean(x)
  print(mean)
}

mean_cal(c(1:12))







