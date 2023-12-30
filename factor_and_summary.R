#summary(vector) ==> will give the statistical summary of the data

dog_breeds  <- rep(c("Labrador Retriever", "German Shepherd", "Golden Retriever"), times = 3)
print(dog_breeds)
summary(dog_breeds)


fact.dog <-factor(dog_breeds, ordered = T, levels = c("Labrador Retriever", "German Shepherd", "Golden Retriever"))
print(fact.dog)
summary(fact.dog)


temps <- c('cold', 'hot', 'med', 'hot', 'med',1, 'hot')
summary(temps)
print(temps[6])
print(class(temps[6]))

number <- c(1, 2, 3, 4, 'ser')
print(class(number[5]))

fact.temps <-factor(temps, ordered = T, levels=c('hot', 'med', 'cold', '1'))
print(fact.temps)
summary(fact.temps)

print(summary(c(1, 2, 3,4 , 5, 6, 7)))
