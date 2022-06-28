#First we will load Libraries
library(tidyverse)
library(ggplot2)
#Now we will load our dataset
data <-read.csv(file.choose(),header=TRUE)
#View data
glimpse(data)
summary(data)
nrow(data)
ncol(data)
#Plotting of Graphs
x<- data[1:20,"chol"]
plot(x,type ="o",col="red",xlab="Gender",ylab="chol",main="Heart Details for Male,Female and Cholestrol")
#Pie Chart
x<- data[1:15,"oldpeak"]
labels<-data[1:15,"oldpeak"]
pie(x,labels,main="oldpeak in heart diease",col=rainbow(length(x)))
#Bar Chart
B<-data[1:12,"age"]
N<-data[1:12,"cp"]
barplot(B,names.arg=N,xlab="Age",ylab="cp",main="Patient Ages and cp",col="Blue")
#Thank You


