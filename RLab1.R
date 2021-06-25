"""Coded By Veena"""

data("iris") #to load dataset
iris

#univariate plot
library(lattice)
# create a panel of simpler density plots by attribute
par(mfrow=c(1,4))
for(i in 1:4) {
  plot(density(iris[,i]), main=names(iris)[i])
}

#multivariate plot

library(caret)
# box and whisker plots for each attribute by class value
x <- iris[,1:4]
y <- iris[,5]
featurePlot(x=x, y=y, plot="box")
