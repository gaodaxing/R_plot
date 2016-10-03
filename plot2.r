NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

Bal_sub<-subset(NEI,fips=="24510")
Bal_subEPY<-tapply(Bal_sub$Emissions,Bal_sub$year,sum,na.rm=T)
plot(names(Bal_subEPY),Bal_subEPY,type="l",xlab="year",ylab="PM2.5 Emission (ton)")
title(main="Baltimore PM2.5 Emission per year")
dev.copy(png,"plot2.png",height=500,width=450)
dev.off()
