#Data loading from the base
data(iris)
head(iris, 10)


#filtering
data(iris)

filtered <- iris[iris$Sepal.Length > 5, ]
filtered

#sorted iris

sorted_iris <- iris[order(-iris$Petal.Width), c("Species", "Petal.Width") ]
sorted_iris

sorted_iris2 <- iris[order(-iris$Petal.Length), c("Species", "Petal.Length")]
sorted_iris2

#selected Columns
columns <- iris[,c("Sepal.Length", "Sepal.Width", "Species")]
columns

#select setosa
setosa <- iris[iris$Species == 'setosa', c('Sepal.Length', 'Sepal.Width', 'Species')]
setosa


#aggregate
aggre <- aggregate(Sepal.Length ~ Species, iris, mean)
aggre

aggre2 <- aggregate(Sepal.Width ~ Species, iris, median)
aggre2

aggre3 <- aggregate(Petal.Length ~ Species, iris, median)
aggre3

#merging 
# Create the first dataset
dataset1 <- data.frame(
  ID = c(1, 2, 3),
  Name = c("John", "Jane", "Bob"),
  Score1 = c(90, 85, 75)
)

# Create the second dataset
dataset2 <- data.frame(
  ID = c(2, 3, 4),
  Age = c(25, 30, 22),
  Score2 = c(88, 92, 80)
)

merged_dataset = merge(dataset1, dataset2, by= 'ID', all=TRUE)
merged_dataset

merged_dataset2 = merge(dataset1, dataset2, by='ID', all= FALSE)
merged_dataset2
