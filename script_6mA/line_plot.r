#chromosome density line chart
setwd("D:/project/result/density") 
data <- read.csv("chr_density100.csv", header = TRUE)
#par(mfrow=c(2,2))
###############################human 红色
par(pin=c(6,2))
par(mar=c(5,6,5,5))
pdf(file="homo_chr.pdf")
x1 <- data[1:25,1]
y1 <- data[1:25,2]
plot(y1,xlim=c(0,26),axes=FALSE,ylab="6mA density(%)", main="H.spains", ylim=c(0,0.3),xlab="",cex=1.5,pch=16,col="#EA4335",lwd=2)
axis(1, las=3, c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25), lwd=2, labels = x1)
axis(2,lwd=2,las=1)
lines(y1,col="#EA4335",lwd=2)
box(lwd=2)
dev.off()
###############################ara 黄色
setwd("D:/project/result/density") 
data <- read.csv("chr_density100.csv", header = TRUE)
pdf(file="ara_chr.pdf")
par(pin=c(6,2))
par(mar=c(5,6,5,5))
x2 <- data[1:7,3]
y2 <- data[1:7,4]
plot(y2,xlim=c(0,8),axes=FALSE,ylab="6mA density(%)", xlab="",cex=1.5,pch=16,col="#FBBC05",lwd=2)
axis(1, las=3, c(1,2,3,4,5,6,7), lwd=2, labels = x2)
axis(2,lwd=2,las=1)
lines(y2,col="#FBBC05",lwd=2)
box(lwd=2)
dev.off()
###############################ele 蓝色
setwd("D:/project/result/density") 
data <- read.csv("chr_density100.csv", header = TRUE)
pdf(file="ele_chr.pdf")
par(pin=c(6,2))
par(mar=c(5,6,5,5))
x3 <- data[1:7,5]
y3 <- data[1:7,6]
plot(y3,xlim=c(0,8),axes=FALSE,ylab="6mA density(%)", xlab="",cex=1.5,pch=16,col="#4285F4",lwd=2)
axis(1, las=3, c(1,2,3,4,5,6,7), lwd=2, labels = x3)
axis(2,lwd=2,las=1)
lines(y3,col="#4285F4",lwd=2)
box(lwd=2)
dev.off()
###############################fly 绿色
setwd("D:/project/result/density") 
data <- read.csv("chr_density100.csv", header = TRUE)
pdf(file="fly_chr.pdf")
par(pin=c(6,2))
par(mar=c(5,6,5,5))
x4 <- data[1:8,7]
y4 <- data[1:8,8]
plot(y4,xlim=c(0,9),axes=FALSE,ylab="6mA density(%)", xlab="",cex=1.5,pch=16,col="#34A853",lwd=2)
axis(1, las=3, c(1,2,3,4,5,6,7,8), lwd=2, labels = x4)
axis(2,lwd=2,las=1)
lines(y4,col="#34A853",lwd=2)
box(lwd=2)
dev.off()





