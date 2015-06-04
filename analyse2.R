# Loading and preprocessing the data
# load data
data = read.csv("activity.csv")
totalStepsPerDay <- sapply(split(data$steps,data$date),sum,na.rm=T)

hist(totalStepsPerDay)

meanPerDay <- mean(totalStepsPerDay )
MedianPerDay <- median(totalStepsPerDay)

avrgPerInterval<-sapply(split(data$steps,data$interval),mean,na.rm=T)
intervals<- unique(data$interval)
plot(x=intervals,y=avrgPerInterval,type='l',xlab='5-minute intervals',ylab='average number of step')

totPerInterval<-sapply(split(data$steps,data$interval),sum,na.rm=T)
indMax <- which.max(totPerInterval)
intervaleMax <- intervals[indMax]
