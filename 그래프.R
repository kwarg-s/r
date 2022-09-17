library(MASS)
tab<-with(Cars93,table(Type))

barplot(tab, main='Type of Car', xlab='Type', ylab="Number of Car", col=1:6,
        legend = c('Compact', 'Large', 'Midsize', 'Small', 'Spotify', 'Van'),
        names.arg=c('Compact', 'Large', 'Midsize', 'Small', 'Spotify', 'Van'))

tab<-with(Cars93, xtabs(~Type+AirBags))

barplot(tab, main='Type of Car', xlab='AirBags', ylab="Number of Car", 
        col=rainbow(6),
        legend = c('Compact', 'Large', 'Midsize', 'Small', 'Spotify', 'Van'),
        beside=TRUE,)

barplot(tab, main='Type of Car', xlab='AirBags', ylab="Number of Car", 
        col=rainbow(6),
        legend = c('Compact', 'Large', 'Midsize', 'Small', 'Spotify', 'Van'),
        beside=FALSE,)

barplot(tab, main='Type of Car', xlab='AirBags', ylab="Number of Car", 
        col=rainbow(6),
        xlim = c(0,ncol(tab)+2),
        args.legend=list(x=ncol(tab)+2, y=max(colSums(tab)), bty="n"),
        legend = c('Compact', 'Large', 'Midsize', 'Small', 'Spotify', 'Van'))

tab <- with(Cars93, table(Type))
pie(tab, col=topo.colors(6))

names(tab)<-c('COMPACT','LARGE','MOSIZE', 'SMALL', 'SPORTY', 'VAN')
pie(tab,col=topo.colors(6))

####

install.packages('vcd')
library('vcd')
summary(Arthritis)

with(Arthritis, plot(density(Age)))
with(Cars93, hist(MPG.highway, probability=T, xlab="highway", main="highway"))
with(Cars93,lines(density(MPG.highway),col='red',lwd=2))

with(Cars93,qqnorm(Turn.circle,main='QQ'))
with(Cars93,qqline(Turn.circle, col='orange',lwd=2))

boxplot(Min.Price~AirBags, data=Cars93)
boxplot(Min.Price~AirBags,data=Cars93)[]$stats

boxplot(Min.Price~AirBags, data=Cars93
        ,at=c(3,2,1)
        ,names=c("DROVER&PASSENGER","DRIVER ONLY","NONE")
        ,col=c("ORANGE","CYAN","YELLOW")
        ,ylab="MINIMUM PRICE"
        ,xlab="AIRBAG"
        ,ylim=c(0,50)
        ,boxwex=0.25)


##ggplot
install.packages("ggplot2")
library("ggplot2")


qplot(AirBags, Min.Price, data=Cars93
      ,geom=c("boxplot","jitter")
      ,fill=AirBags
      ,ylab="Minimum Price"
      ,xlab="Airbags"
      ,alpha=I(.2))

p<-ggplot(Cars93
          ,aes(x=AirBags,y=Min.Price))+
  geom_boxplot(aes(fill=AirBags))+
  scale_fill_viridis_d()
p
p+theme(legend.position="none")+xlab("Airbags")+ylab("Minimum Price")

install.packages("pirateplot")
library("pirateplot")
pirateplot(formula=MPG.city ~ Origin+DriveTrain
           ,point.o=0.5
           ,data=Cars93
           ,main="City MPG by Origin and Drive Train"
           ,inf.method="iqr")

p1<-ggplot(Cars93,aes(x=MPG.highway))+
theme_bw()+
geom_density(aes(group=Type,colour=Type))+
labs(x="MPG.highway", y="Density")+
ggtitle("Density of MPG in Highway by Type")+
theme(plot.title=element_text(hjust=0.5))

p2<-ggplot(Cars93,aes(x=MPG.highway))+
  theme_bw()+
  geom_density(aes(group=Origin,colour=Origin))+
  labs(x="MPG.highway", y="Density")+
  ggtitle("Density of MPG in Highway by Origin")+
  theme(plot.title=element_text(hjust=0.5))

install.packages("gridExtra")
library(gridExtra)
grid.arrange(p1,p2,ncol=2)

with(Arthritis,spine(Improved~Age, breaks=quantile(Age)))
spine(Improved~Age, data=Arthritis, breaks="Scott")

cdplot(Improved~Age, data=Arthritis)
