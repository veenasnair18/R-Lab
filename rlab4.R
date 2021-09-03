#loading the required libraries 
print("Coded By Veena")
library(tidyverse)
library(MASS)
library(klaR)
set.seed(101)
sample_n(iris, 10)

#preparing the data
training_sample <- sample(c(TRUE, FALSE), nrow(iris), replace = T, prob = c(0.6,0.4))
train <- iris[training_sample, ]
test <- iris[!training_sample, ]

#performing LDA

lda.iris <- lda(Species ~ ., train)
lda.iris #show results

#plotting
plot(lda.iris, col = as.integer(train$Species))
plot(lda.iris, dimen = 1, type = "b")
partimat(Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, data=train, method="lda")

#predictions

lda.train <- predict(lda.iris)
train$lda <- lda.train$class
table(train$lda,train$Species)

lda.test <- predict(lda.iris,test)
test$lda <- lda.test$class
table(test$lda,test$Species)
