# Q1
age <- 25
print(age)
cat(age)

#Q2
heights <- c(165, 170, 175,180)
print(heights)
cat(heights)

#Q3
students <- data.frame(
  Name = c("suresh", "naresh", "ramesh"),
  age = c(25, 26, 27)
)
print(students)

#Q4
n = 26
if(n%%2 == 0){
  cat("Even")
}else{
  cat("Odd")
}

#Q5
for( i in 1:5){
  c <- i^2
  print(c)
}

calculate_area <- function(r){
  return (22/7)*r*r
}

print(calculate_area(5))
