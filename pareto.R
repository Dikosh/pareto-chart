defect.counts = c(12,29,18,3,34,4)
names(defect.counts) = c("Weather","Overslept","Alarm Failure","Time Change","Traffic","Other")

df.defects <- data.frame(defect.counts)
library(qcc)
pareto.chart(defect.counts)
pareto.chart(defect.counts,main="My Pareto Chart",xlab="Reasons",ylab="Frequency",cex.names=0.6,las=1,col=topo.colors(6))
abline(h=(sum(defect.counts)*.8),col="red",lwd=4)
