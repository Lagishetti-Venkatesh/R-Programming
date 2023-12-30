# Load the iris dataset
data(iris)

# Create a copy of the iris dataset
iris_copy <- iris

# Set seed for reproducibility
set.seed(123)

# Introduce some missing values
iris_copy[sample(1:150, 10), "Sepal.Length"] <- NA
iris_copy[sample(1:150, 10), "Sepal.Width"] <- NA
iris_copy[sample(1:150, 10), "Petal.Length"] <- NA
iris_copy[sample(1:150, 10), "Petal.Width"] <- NA

# Display the dataset with missing values
print("Dataset with Missing Values:")
print(head(iris_copy))

# Replace missing values with the mean of their respective columns
iris_copy$Sepal.Length[is.na(iris_copy$Sepal.Length)] <- mean(iris_copy$Sepal.Length, na.rm = TRUE)
iris_copy$Sepal.Width[is.na(iris_copy$Sepal.Width)] <- mean(iris_copy$Sepal.Width, na.rm = TRUE)
iris_copy$Petal.Length[is.na(iris_copy$Petal.Length)] <- mean(iris_copy$Petal.Length, na.rm = TRUE)
iris_copy$Petal.Width[is.na(iris_copy$Petal.Width)] <- mean(iris_copy$Petal.Width, na.rm = TRUE)

# Display the dataset after handling missing values
print("Dataset after Handling Missing Values:")
print(head(iris_copy))



# Load the necessary library
library(tidyr)

# Load the iris dataset
data(iris)

# Display the first few rows of the original "iris" dataset (wide format)
print("Original Iris Dataset (Wide Format):")
print(head(iris))

# Reshape the dataset from wide to long using gather
iris_long <- gather(iris, key = "Measurement", value = "Value", -Species)

# Display the first few rows of the reshaped "iris" dataset (long format)
print("Reshaped Iris Dataset (Long Format):")
print(head(iris_long))

