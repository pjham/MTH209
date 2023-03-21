dat <- read.table("https://stat4ds.rwth-aachen.de/data/Carbon_West.dat")
colnames(dat)<- dat[1,]
dat <- dat[-1,]
dat["CO2"] <- as.numeric(dat$CO2)
hist(dat$CO2,xlab="CO2",ylab="Proportion",freq=FALSE)# histogram
plot(density(dat$CO2))

Crime<-read.table("http://stat4ds.rwth-aachen.de/data/Murder2.dat", header=TRUE)
boxplot(Crime$murder~Crime$nation,xlab="Murder Rate",horizontal=TRUE)

PID<-read.table("http://stat4ds.rwth-aachen.de/data/PartyID.dat", header=TRUE)
table(PID$race,PID$id) #forms contingency table (not shown here;see Table 1.1)
mosaicplot(table(PID$race,PID$id)) #graphical portrayalof cell sizes
