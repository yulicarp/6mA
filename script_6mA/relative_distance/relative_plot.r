setwd("D:/project/result/relative_distance/homo")
lncRNA <- read.table("lncRNA_related_distance.txt",header = F,sep = "\t")
protein <- read.table("protein_related_distance.txt",header = F,sep = "\t")
#0.1
x<-seq(0.1,1,0.1)
m<-seq(0,1,by=0.1)
y_lncRNA<-as.data.frame(table(cut(lncRNA[,4],m)))
y_protein<-as.data.frame(table(cut(protein[,4],m)))
plot((y_lncRNA[,2]/sum(y_lncRNA[,2]))~x,type= "l",col=rgb(76,123,178,max = 255),ylim=c(0,0.2),cex=1,main="The density of 6mA in related-distance_0.1",ylab="Density",xlab="",lwd=2)
lines(x,y_protein[,2]/sum(y_protein[,2]),col=rgb(184,79,75,max = 255),lty=1,lwd=2)
abline(h=0.1,col="black",lty=2,lwd=2)
legend(0.8,0.2, c("lncRNA","protien coding"),lwd=3, bty= "n",col = c(rgb(76,123,178,max = 255), rgb(184,79,75,max = 255)))
#0.05
x<-seq(0.05,1,0.05)
m<-seq(0,1,by=0.05)
y_lncRNA<-as.data.frame(table(cut(lncRNA[,4],m)))
y_protein<-as.data.frame(table(cut(protein[,4],m)))

plot((y_lncRNA[,2]/sum(y_lncRNA[,2]))~x,type= "l",col=rgb(76,123,178,max = 255),ylim=c(0,0.1),cex=1,main="The density of 6mA in related-distance_0.05",ylab="Density",xlab="",lwd=2)

lines(x,y_protein[,2]/sum(y_protein[,2]),col=rgb(184,79,75,max = 255),lty=1,lwd=2)
abline(h=0.05,col="black",lty=2,lwd=2)
legend(0.7,0.1 , c("LncRNA","Gene"),lwd=3, bty= "n",col = c(rgb(76,123,178,max = 255), rgb(184,79,75,max = 255)))
#0.02
x<-seq(0.02,1,0.02)
m<-seq(0,1,by=0.02)
y_lncRNA<-as.data.frame(table(cut(lncRNA[,4],m)))
y_protein<-as.data.frame(table(cut(protein[,4],m)))
plot((y_lncRNA[,2]/sum(y_lncRNA[,2]))~x,type= "l",col=rgb(76,123,178,max = 255),ylim=c(0,0.04),cex=1,main="The density of 6mA in related-distance_0.02",ylab="Density",xlab="",lwd=2)
lines(x,y_protein[,2]/sum(y_protein[,2]),col=rgb(184,79,75,max = 255),lty=1,lwd=2)
abline(h=0.02,col="black",lty=2,lwd=1)
legend(0.7,0.04 , c("LncRNA","Gene"),lwd=3, bty= "n",col = c(rgb(76,123,178,max = 255), rgb(184,79,75,max = 255)))
#0.01
x<-seq(0.01,1,0.01)
m<-seq(0,1,by=0.01)
y_lncRNA<-as.data.frame(table(cut(lncRNA[,4],m)))
y_protein<-as.data.frame(table(cut(protein[,4],m)))

plot((y_lncRNA[,2]/sum(y_lncRNA[,2]))~x,type= "l",col=rgb(76,123,178,max = 255),ylim=c(0,0.02),cex=1,main="The density of 6mA in related-distance_0.01",ylab="Density",xlab="",lwd=2)

lines(x,y_protein[,2]/sum(y_protein[,2]),col=rgb(184,79,75,max = 255),lty=1,lwd=2)
abline(h=0.01,col="black",lty=1,lwd=2)
legend(0.7,0.02 , c("LncRNA","Gene"),lwd=3, bty= "n",col = c(rgb(76,123,178,max = 255), rgb(184,79,75,max = 255)))

par(mfrow=c(2,2))
############ara
setwd("D:/project/result/relative_distance/ara")
lncRNA <- read.table("lncRNA_related_distance.txt",header = F,sep = "\t")
protein <- read.table("protein_related_distance.txt",header = F,sep = "\t")
x<-seq(0.1,1,0.1)
m<-seq(0,1,by=0.1)
y_lncRNA<-as.data.frame(table(cut(lncRNA[,4],m)))
y_protein<-as.data.frame(table(cut(protein[,4],m)))
plot((y_lncRNA[,2]/sum(y_lncRNA[,2]))~x,type= "l",col=rgb(76,123,178,max = 255),ylim=c(0,0.2),cex=1,main="",ylab="Frequency",xlab="",lwd=2)
lines(x,y_protein[,2]/sum(y_protein[,2]),col=rgb(184,79,75,max = 255),lty=1,lwd=2)
abline(h=0.1,col="black",lty=2,lwd=2)
legend(0.7,0.2 , c("lncRNA","protein_coding"),lwd=3, bty= "n",col = c(rgb(76,123,178,max = 255), rgb(184,79,75,max = 255)))

#############ele
setwd("D:/project/result/relative_distance/ele")
lncRNA <- read.table("lncRNA_related_distance.txt",header = F,sep = "\t")
protein <- read.table("protein_related_distance.txt",header = F,sep = "\t")
x<-seq(0.1,1,0.1)
m<-seq(0,1,by=0.1)
y_lncRNA<-as.data.frame(table(cut(lncRNA[,4],m)))
y_protein<-as.data.frame(table(cut(protein[,4],m)))
plot((y_lncRNA[,2]/sum(y_lncRNA[,2]))~x,type= "l",col=rgb(76,123,178,max = 255),ylim=c(0,0.2),cex=1,main="",ylab="Frequency",xlab="",lwd=2)
lines(x,y_protein[,2]/sum(y_protein[,2]),col=rgb(184,79,75,max = 255),lty=1,lwd=2)
abline(h=0.1,col="black",lty=2,lwd=2)
legend(0.7,0.2 , c("lncRNA","protein_coding"),lwd=3, bty= "n",col = c(rgb(76,123,178,max = 255), rgb(184,79,75,max = 255)))

################fly
setwd("D:/project/result/relative_distance/fly")
lncRNA <- read.table("lncRNA_related_distance.txt",header = F,sep = "\t")
protein <- read.table("protein_related_distance.txt",header = F,sep = "\t")
x<-seq(0.1,1,0.1)
m<-seq(0,1,by=0.1)
y_lncRNA<-as.data.frame(table(cut(lncRNA[,4],m)))
y_protein<-as.data.frame(table(cut(protein[,4],m)))
plot((y_lncRNA[,2]/sum(y_lncRNA[,2]))~x,type= "l",col=rgb(76,123,178,max = 255),ylim=c(0,0.2),cex=1,main="",ylab="Frequency",xlab="",lwd=2)
lines(x,y_protein[,2]/sum(y_protein[,2]),col=rgb(184,79,75,max = 255),lty=1,lwd=2)
abline(h=0.1,col="black",lty=2,lwd=2)
legend(0.7,0.2 , c("lncRNA","protein_coding"),lwd=3, bty= "n",col = c(rgb(76,123,178,max = 255), rgb(184,79,75,max = 255)))

########homo
setwd("D:/project/result/relative_distance/homo")
lncRNA <- read.table("lncRNA_related_distance.txt",header = F,sep = "\t")
protein <- read.table("protein_related_distance.txt",header = F,sep = "\t")
#0.1
x<-seq(0.01,1,0.01)
m<-seq(0,1,by=0.01)

y_lncRNA<-as.data.frame(table(cut(lncRNA[,4],m)))
y_protein<-as.data.frame(table(cut(protein[,4],m)))
plot((y_lncRNA[,2]/sum(y_lncRNA[,2]))~x,type= "l",col=rgb(76,123,178,max = 255),ylim=c(0,0.02),cex=1,main="",ylab="Frequency",xlab="",lwd=2)
lines(x,y_protein[,2]/sum(y_protein[,2]),col=rgb(184,79,75,max = 255),lty=1,lwd=2)
abline(h=0.01,col="black",lty=2,lwd=2)
legend(0.7,0.1 , c("lncRNA","protein_coding"),lwd=3, bty= "n",col = c(rgb(76,123,178,max = 255), rgb(184,79,75,max = 255)))
















