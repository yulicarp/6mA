par(mfrow=c(4,1))
#<ara>
setwd("D:/project/result/length_6ma")
lncRNA <- read.table("ara_lncRNA_length.txt")
protein <- read.table("ara_protein_length.txt")
hist(protein[,1],xlim=c(0,10000),breaks=500)
ara_aa1 <- protein[protein[,1]<=1000,]
ara_aa2 <- protein[protein[,1]>1000&protein[,1]<=2000,]
ara_aa3 <- protein[protein[,1]>2000&protein[,1]<=3000,]
ara_aa4 <- protein[protein[,1]>3000,]
boxplot(ara_aa1[,2],ara_aa2[,2],ara_aa3[,2],ara_aa4[,2],outline=FALSE)

#<ele>
setwd("D:/project/result/length_6ma")
lncRNA <- read.table("ele_lncRNA_length.txt")
protein <- read.table("ele_protein_length.txt")
hist(protein[,1],xlim=c(0,10000),breaks=500)
ele_aa1 <- protein[protein[,1]<=1000,]
ele_aa2 <- protein[protein[,1]>1000&protein[,1]<=2000,]
ele_aa3 <- protein[protein[,1]>2000&protein[,1]<=3000,]
ele_aa4 <- protein[protein[,1]>3000,]
boxplot(ele_aa1[,2],ele_aa2[,2],ele_aa3[,2],ele_aa4[,2],outline=FALSE)
#<fly>
setwd("D:/project/result/length_6ma")
lncRNA <- read.table("fly_lncRNA_length.txt")
protein <- read.table("fly_protein_length.txt")
hist(protein[,1],xlim=c(0,10000),breaks=5000)
fly_aa1 <- protein[protein[,1]<=2000,]
fly_aa2 <- protein[protein[,1]>2000&protein[,1]<=4000,]
fly_aa3 <- protein[protein[,1]>4000&protein[,1]<=6000,]
fly_aa4 <- protein[protein[,1]>6000,]
boxplot(fly_aa1[,2],fly_aa2[,2],fly_aa3[,2],fly_aa4[,2],outline=FALSE)
#<homo>
setwd("D:/project/result/length_6ma")
lncRNA <- read.table("homo_lncRNA_length.txt")
protein <- read.table("homo_protein_length.txt")
hist(protein[,1],xlim=c(0,70000),breaks=5000)
homo_aa1 <- protein[protein[,1]<=15000,]
homo_aa2 <- protein[protein[,1]>15000&protein[,1]<=30000,]
homo_aa3 <- protein[protein[,1]>30000&protein[,1]<=45000,]
homo_aa4 <- protein[protein[,1]>45000,]
boxplot(homo_aa1[,2],homo_aa2[,2],homo_aa3[,2],homo_aa4[,2],outline=FALSE)

write.csv(ara_aa1[,2],file="./pro/ara_aa1.csv")
write.csv(ara_aa2[,2],file="./pro/ara_aa2.csv")
write.csv(ara_aa3[,2],file="./pro/ara_aa3.csv")
write.csv(ara_aa4[,2],file="./pro/ara_aa4.csv")

write.csv(ele_aa1[,2],file="./pro/ele_aa1.csv")
write.csv(ele_aa2[,2],file="./pro/ele_aa2.csv")
write.csv(ele_aa3[,2],file="./pro/ele_aa3.csv")
write.csv(ele_aa4[,2],file="./pro/ele_aa4.csv")

write.csv(fly_aa1[,2],file="./pro/fly_aa1.csv")
write.csv(fly_aa2[,2],file="./pro/fly_aa2.csv")
write.csv(fly_aa3[,2],file="./pro/fly_aa3.csv")
write.csv(fly_aa4[,2],file="./pro/fly_aa4.csv")

write.csv(homo_aa1[,2],file="./pro/homo_aa1.csv")
write.csv(homo_aa2[,2],file="./pro/homo_aa2.csv")
write.csv(homo_aa3[,2],file="./pro/homo_aa3.csv")






data <- read.csv("./pro/pro.csv",header=TRUE)
pdf("pro_length_density.pdf")
boxplot(data,outline=FALSE,axes=FALSE ,ylab="6mA density(‰)",cex=1.2,col=c(rgb(79,129,189,max=255),rgb(155,187,89,max=255),rgb(192,80,77,max=255),"MediumPurple3","MediumPurple3"),las=1, font.lab=1,xlim=c(0,20),ylim=c(0,0.008),main="",cex.lab=1.2,title="",cex.main=1.8)
axis(2,lwd=0.8,las=1)
axis(1,  at = c(2.5,7.5,12.5,17.5), lwd=0.8, font=3, labels = c("A.thaliana","D.melanogaster","C.elegans","H.sapiens"))
legend("topright",pch=c(15,15,15,15),col=c(rgb(79,129,189,max=255),rgb(155,187,89,max=255),rgb(192,80,77,max=255),"MediumPurple3"),c("group1","group2","group3","group4"))
box(lwd=0.5)
dev.off()

data <- read.csv("density.csv",header=TRUE)
pdf("length_density.pdf")
boxplot(data,outline=FALSE,axes=FALSE ,ylab="6mA density(‰)",cex=1.2,col=c(rgb(79,129,189,max=255),rgb(155,187,89,max=255),rgb(192,80,77,max=255),"MediumPurple3"),ylab="",las=1, font.lab=1,xlim=c(0,16),ylim=c(0,0.012),main="",cex.lab=1.2,title="",cex.main=1.8)
axis(2,lwd=0.8,las=1)
axis(1,  at = c(2,6,10,14), lwd=0.8, font=3, labels = c("A.thaliana","D.melanogaster","C.elegans","H.sapiens"))
legend("topright",pch=c(15,15,15),col=c(rgb(79,129,189,max=255),rgb(155,187,89,max=255),rgb(192,80,77,max=255),"MediumPurple3"),c("group1","group2","group3"))
box(lwd=0.5)
dev.off()



















