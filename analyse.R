# Loading and preprocessing the data
# load data
act = read.csv("activity.csv")
# process/transform data
totalSteps<-aggregate(steps~date,data=act,sum,na.rm=TRUE)

# What is mean total number of steps taken per day?
# make a histogram
hist(totalSteps$steps)
barplot(totalSteps$steps)
# calculate and report the mean and median total number of steps/day
mean(totalSteps$steps)
median(totalSteps$steps)

# What is the average daily activity pattern?
# make a time series plot (i.e. type = "l") of the 5-minute interval (x-axis) and the average number of steps taken, averaged across all days (y-axis)

# split by intervals & calculate mean of steps in each 5 minutes interval
averageInterval<-sapply(split(act$steps,act$interval), mean, na.rm=T)
# plot
intervals<- unique(act$interval)
plot(x=intervals,y=averageInterval,type='l',xlab='Intervals (5 minutes)',ylab='Average steps')

# which 5-minute interval, on average across all the days in the dataset, contains the maximum number of steps?
# split by intervals & calculate sum of steps in each 5 minutes interval
totalInterval<-sapply(split(act$steps,act$interval),sum,na.rm=T)
totalInterval[which.max(totalInterval)]
maxStepsInterval  <- intervals[which.max(totalInterval)]

