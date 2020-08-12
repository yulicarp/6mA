
lncRNA <- read.table("lncRNA_related_distance.txt",header = F,sep = "\t");
protein <- read.table("protein_related_distance.txt",header = F,sep = "\t");
x<-seq(0.1,1,0.1)
m<-seq(0,1,by=0.1)
y_lncRNA<-as.data.frame(table(cut(lncRNA[,4],m)))
y_protein<-as.data.frame(table(cut(protein[,4],m)))

plot((y_lncRNA[,2]/sum(y_lncRNA[,2]))~x,type= "l",col=rgb(76,123,178,max = 255),ylim=c(0,0.2),cex=1,main="The density of 6mA in related-distance_0.1",ylab="Density",xlab="",lwd=2)

lines(x,y_protein[,2]/sum(y_protein[,2]),col=rgb(184,79,75,max = 255),lty=1,lwd=2)
abline(h=0.1,col="black",lty=2,lwd=2)
legend(0.8,0.2 , c("lncRNA","Gene"),lwd=3, bty= "n",col = c(rgb(76,123,178,max = 255), rgb(184,79,75,max = 255)))
