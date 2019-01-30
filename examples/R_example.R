#read data into variable (note that the program expects the csv file to be in the working directory)
setwd("~/Documents/coding_intro_spring_2019/examples/")
datavar <- read.csv("dataset_enrollmentForecast.csv")

#attach data variable
attach(datavar)

#display all data
datavar

#create a linear model using lm(FORMULA, DATAVAR)
#predict the fall enrollment (ROLL) using the unemployment rate (UNEM)
linearModelVar <- lm(ROLL ~ UNEM, datavar)
#display linear model
linearModelVar

#the predicted fall enrollment, given a 9% unemployment rate, is 14,163 students.
#use summary(OBJECT) to display information about the linear model
summary(linearModelVar)

#create a base scatterplot
plot(UNEM, ROLL, main="Scatterplot Example", xlab="Unemployment ", ylab="Fall Enrollment ")

#now plot the linear regression model
abline(linearModelVar, col="red") # regression line (y~x) 




