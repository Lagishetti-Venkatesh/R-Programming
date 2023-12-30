# Generate random data for the dataset
set.seed(123)  # For reproducibility
data <- data.frame(
  ID = 1:50,
  Name = replicate(50, paste(sample(LETTERS, 5), collapse="")),
  Age = sample(18:60, 50, replace=TRUE),
  Score = round(runif(50, min=50, max=100), 2),
  Grade = sample(c("A", "B", "C", "D", "F"), 50, replace=TRUE)
)

# Save the dataset as a CSV file
write.csv(data, file="sample_dataset.csv", row.names=FALSE)

data <- read.csv("sample_dataset.csv")

print(data)
head(data)
tail(data)

subset_data <- subset(data, Age > 30)
subset_data

subset_data2 <- subset(data, (Age > 30 & Score > 70))

nrow(subset_data2)
ncol(subset_data)

mean_of_age <- mean(data$Age)
print(mean_of_age)

new_data_frame <- data[ ,c("Name", "Grade")]
print(new_data_frame)

new_data_frame_index <- data[, c(2, 4)]

dimen <- dim(data)
print(dimen)

names(data)
colnames(data)

data$age <- data$Age
names(data)

summary(data$age)
