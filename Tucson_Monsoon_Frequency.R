### For import and plotting of Tucson monsoon data
###Data from http://www.wrh.noaa.gov/twc/monsoon/monsoon.php
#This file takes plots the number of times the monsoon in Tucson has started on a particular date.
setwd("~/Documents/github/TucsonMonsoon")

###Controllable Options
inputfile="monsoon_data.csv"

###Import data
monsoon_data <- read.csv(inputfile) #import the entire dataset

###Format date properly
date_data <- as.Date(monsoon_data$Date,"%m-%d")

###Plot data
plot(date_data,monsoon_data$Frequency,col = "gray",axes=FALSE,xlab="Date",ylab="# Times Monsoon Started on This Date",font.axis = 2,font.lab = 2)
lim <- par("usr")
for(i in 1:length(date_data)){
  rect(date_data[i]-0.5, 0, date_data[i]+0.5, monsoon_data$Frequency[i], border = "black", col = "green")
}
axis(1) ## add axes back
axis(2)
box()   ## and the plot frame