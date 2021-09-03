print("***Coded By Veena***")
data("cars")  #importing dataset 
head(cars)    #print 1st 6 data
#Analysing the data
summary(cars)

#Plotting for better understanding

plot(cars$speed, cars$dist, xaxis='Speed (mph)', yaxis='Stopping Distance (ft)', 
     main='Stopping Distance vs. Speed')
#Building linear model and finding best fitting line
linear_cars <- lm(cars$dist ~ cars$speed)
linear_cars
plot(cars$speed, cars$dist, xlab='Speed (mph)', ylab='Stopping Distance (ft)', 
     main='Stopping Distance vs. Speed')
abline(linear_cars)

summary(linear_cars)

plot(linear_cars$fitted.values, linear_cars$residuals, xlab='Fitted Values', ylab='Residuals')
abline(0,0)

#Plotting a QQ plot

qqnorm(linear_cars$residuals)
qqline(linear_cars$residuals)

