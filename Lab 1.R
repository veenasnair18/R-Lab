
print("Coded By Veena")
library(datasets) 
data(iris)#To load data Set
summary(iris) #Displays the summary
names(iris) <- tolower(names(iris))
library(dplyr)


#Univariate Plot- Histogram
par(mfrow=c(1,4))
for(i in 1:4) {
  hist(iris[,i], main=names(iris)[i])
}

#Multivariate Plot- ScatterPlot Matrix
# load library
plot(iris) #Simple Plotting

pairs(petal.width~., data=iris, col=iris$Species)

library(caret)
# load the data

# density plots for each attribute by class value
x <- iris[,1:4]
y <- iris[,5]
scales <- list(x=list(relation="free"), y=list(relation="free"))
featurePlot(x=x, y=y, plot="density", scales=scales)
