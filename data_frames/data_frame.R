# Creating a data frame
df <- data.frame(
  Name = c("Alice", "Bob", "Charlie", "David"),
  Age = c(25, 30, 22, 35),
  Score = c(95, 88, 73, 90)
)

# Print the data frame
print(df)
names <- df$Name
age <- df$Age
print(names)
print(age)

#########################
print(df[1, ])
print(df[2, ])
print(df[2, 1])
########################
head(df)
tail(df)

nrow(df)
ncol(df)

str(df)

summary(df)

df[order(df$Age),]

df[order(df$Score), ]
