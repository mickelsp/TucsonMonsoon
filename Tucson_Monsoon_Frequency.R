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
plot(date_data,monsoon_data$Frequency,col = "gray",axes=TRUE,xlab='Start Date\n Data: http://www.wrh.noaa.gov/twc/monsoon/monsoon.php',ylab="# Times Monsoon Starts on This Date",font.axis = 2,font.lab = 2)
lim <- par("usr")
for(i in 1:length(date_data)){
  rect(date_data[i]-0.5, 0, date_data[i]+0.5, monsoon_data$Frequency[i], border = "black", col = "green")
}
box()   ## and the plot frame
text(date_data[1]+0.5,3,'2000');
X = c(date_data[1]+0.5,date_data[1]);
Y = c(2.75,1.1)
lines(X,Y)
text(date_data[39]-0.5,1.5,'1987');
#text(date_data[17]+4,7.5,'July 3rd:' );
text(date_data[17]+10,7.5,'2011, 2008, 2001, 1998,' );
text(date_data[17]+9.7,7,'1971, 1968, 1963, 1960' );
title('Start of the Monsoon in Tucson, AZ\n(1949 - 2012)');
