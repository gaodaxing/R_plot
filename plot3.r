NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

library(ggplot2)
library(reshape2)
bal_sub<-subset(NEI,fips=="24510")
EYT<-tapply(bal_sub$Emissions,list(bal_sub$year,bal_sub$type),sum,na.rm=T)
EYT<-as.data.frame(EYT)
EYT$year<-rownames(EYT)
EYTreshape<-melt(EYT,id="year")
names(EYTreshape)[2]<-"type"
ggplot(EYTreshape,aes(year,value,colour=type,group=type))+geom_line()+ylab("PM2.5 Emission (ton)")+ggtitle("Baltimore PM2.5 Emission per year")
dev.copy(png,"plot3.png",height=500,width=450)
dev.off()
