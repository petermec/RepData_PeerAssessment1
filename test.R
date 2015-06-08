url <- "https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2FStormData.csv.bz2"
download.file(url, destfile="StormData.csv.bz2")
## No need to decompress this downloaded file.
stormData <- read.csv("StormData.csv.bz2", stringsAsFactors=F)
