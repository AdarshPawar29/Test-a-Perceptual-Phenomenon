getwd()
setwd('~/Downloads')
st <- read.csv('stroopdata.csv')
summary(st)
mean(st$Congruent)
mean(st$Incongruent)
median(st$Congruent)
median(st$Incongruent)
sd(st$Congruent)
sd(st$Incongruent)
install.packages("ggplot2")
library(ggplot2)
p1 <- ggplot(data = st, aes(x = Index, Congruent))
p1 + geom_point(color = "#F79420")+
  scale_y_continuous(breaks = seq(1,23,1), limits = c(1,23))+
  scale_x_continuous(breaks = seq(1,24,1), limits = c(1,24))+
  ggtitle('Congruent')+
  xlab('Number of Reader')+
  ylab('Time taken to read (In sec.)')
p2 <- ggplot(data = st, aes(x = Index, Incongruent))
p2 + geom_point(color = "#5760AB")+
  scale_y_continuous(breaks = seq(1,36,1), limits = c(1,36))+
  scale_x_continuous(breaks = seq(1,24,1), limits = c(1,24))+
  ggtitle('Incongruent')+
  xlab('Number of Reader')+
  ylab('Time taken to read (In sec.)')












