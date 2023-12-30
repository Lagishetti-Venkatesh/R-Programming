#Null Hypothesis ==> mu = 5 (the sample average weight loss is equal to expected or population weight loss of 5 pound)
#Alternative Hypothesis mu != 5


weight_loss <- c(4.2, 6.5, 3.8, 5.1, 4.9, 6.0, 5.5, 4.7, 5.2, 4.8,
                 5.9, 4.5, 5.3, 4.4, 6.1, 4.0, 5.7, 4.3, 6.2, 5.0,
                 4.6, 5.6, 4.1, 5.4, 3.7, 6.3, 5.8, 4.7, 5.5, 4.9,
                 5.2, 4.8, 5.9, 4.5, 5.3, 4.4, 6.1, 4.0, 5.7, 4.3)


result <- t.test(weight_loss, mu=5)

p_value <- result$p.value

alpha <- 0.05

if (p_value <- alpha){
  cat("Reject Null hypothesis")
}else{
  cat('Failed to reject null hypothesis')
}