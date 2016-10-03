NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

EPY<-tapply(NEI$Emissions,NEI$year,sum,na.rm=T)
plot(names(EPY),EPY,type="l",xlab="year",ylab="PM2.5 Emission (ton)")
title(main="Total PM2.5 Emission per year")
dev.copy(png,"plot1.png",height=500,width=450)
dev.off()
