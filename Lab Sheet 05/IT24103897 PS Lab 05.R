setwd("C:\\Users\\IT24103897\\Desktop\\IT24103897")
Delivery.Times<-read.table("Exercise - Lab 05.txt", header = TRUE)

head(Delivery.Times)
hist(Delivery.Times$Delivery, 
     breaks = 9, 
     xlim = c(20,70),
     main = "Histogram of Delivery Time",
     xlab = "Delivery Time", right = TRUE )
# Based on the histogram, the distribution is positively skewed 
# skewed to the right because the majority of the data is concentrated on the left side of the graph 
# There is a longer "tail" of data extending to the right.
# Get the histogram data (counts and breaks) from the previous histogram

delivery_cut<-cut(Delivery.Time$Delivery, breaks = seq(20,70, by=5)),right=TRUE)
freq_table<-table(delivery_cut)
cum_freq<-cunsum(freq_table)
bin_midppoint<-seq(22.5,67.5, by=5)
plot(bin_midppoint, cum_freq, type="o",xlab="Delivery Time", ylab="cumulative Frequency",
      main="Cumu;ative Freqency polygon")

delivery_cut <- cut(Delivery.Times$Delivery, breaks=seq(20, 70, by=5), right=TRUE)
freq_table <- table(delivery_cut)
cum_freq <- cumsum(freq_table)
bin_midpoints <- seq(22.5, 67.5, by=5)  # midpoints of intervals 20-25, 25-30, etc.
plot(bin_midpoints, cum_freq, type="o", 
     , xlab="Delivery Time", ylab="Cumulative Frequency", 
     main="Cumulative Frequency Polygon (Ogive)")
