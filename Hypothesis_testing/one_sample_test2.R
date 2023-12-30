
#null Hypothesis: mean = 70(population mean)
#alternative hypothesis mean != 70




heights <- sample(50:60, 25, replace = TRUE)
print(heights)


result <- t.test(heights, mu=70)

p_value <- result$p.value

print(p_value)

alpha <- 0.05

if (p_value < alpha){
  cat("reject the null hypothesis")
}else{
  cat("Failed to reject the Null hypothesis")
}