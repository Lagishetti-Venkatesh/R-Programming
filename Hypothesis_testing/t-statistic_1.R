# Sample data (replace with your actual data)
blood_pressure <- c(130, 125, 118, 135, 122, 128, 119, 127, 133, 121,
                    126, 131, 123, 124, 129, 130, 126, 134, 120, 122,
                    127, 132, 128, 125, 119, 131, 126, 123, 124, 130,
                    132, 128, 122, 125, 126, 120, 128, 129, 135, 131,
                    123, 127, 129, 121, 125, 124, 130, 128)


result <- t.test(blood_pressure, mu=120)

p_value <- result$p.value

print(p_value)

alpha <- 0.05

if (p_value <= alpha){
  cat("reject the null hypothesis: i.e blood pressure is significantly different")
}else{
  cat("Failed to reject the null hypothesis")
}