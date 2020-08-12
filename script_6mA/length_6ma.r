 <ara>
setwd("D:/project/result/length_6ma")
lncRNA <- read.table("ara_lncRNA_length.txt")
protein <- read.table("ara_protein_length.txt")
hist(lncRNA[,1])
ara_aa1 <- lncRNA[lncRNA[,1]<=500,]
ara_aa2 <- lncRNA[lncRNA[,1]>500&lncRNA[,1]<=1000,]
ara_aa3 <- lncRNA[lncRNA[,1]>1000,]
write.csv(ara_aa1[,2],file="ara_aa1.csv")
write.csv(ara_aa2[,2],file="ara_aa2.csv")
write.csv(ara_aa3[,2],file="ara_aa3.csv")
aa4 <- lncRNA[lncRNA[,1]>1500&lncRNA[,1]<=2000,]
aa5 <- lncRNA[lncRNA[,1]>2500,]
nrow(aa1)
nrow(aa2)
nrow(aa3)
nrow(aa4)
nrow(aa5)
t.test(aa1[,2],aa2[,2])
t.test(aa4[,2],aa5[,2])
boxplot(aa1[,2],aa2[,2],aa3[,2],outline=FALSE)

#mean(as.numeric(as.character(lncRNA[,1])))
 <ele>
setwd("D:/project/result/length_6ma")
lncRNA <- read.table("ele_lncRNA_length.txt")
protein <- read.table("ele_protein_length.txt")
hist(lncRNA[,1])
ele_aa1 <- lncRNA[lncRNA[,1]<=1000,]
ele_aa2 <- lncRNA[lncRNA[,1]>1000&lncRNA[,1]<=2000,]
ele_aa3 <- lncRNA[lncRNA[,1]>2000,]

nrow(aa1)
nrow(aa2)
nrow(aa3)
t.test(aa1[,2],aa2[,2])
boxplot(aa1[,2],aa2[,2],aa3[,2],outline=FALSE)
 <fly>
setwd("D:/project/result/length_6ma")
lncRNA <- read.table("fly_lncRNA_length.txt")
protein <- read.table("fly_protein_length.txt")
hist(lncRNA[,1])
fly_aa1 <- lncRNA[lncRNA[,1]<=1000,]
fly_aa2 <- lncRNA[lncRNA[,1]>1000&lncRNA[,1]<=2000,]
fly_aa3 <- lncRNA[lncRNA[,1]>2000,]
#aa4 <- lncRNA[lncRNA[,1]>3000&lncRNA[,1]<=4000,]
aa4 <- lncRNA[lncRNA[,1]>3000,]
nrow(aa1)
nrow(aa2)
nrow(aa3)
t.test(aa1[,2],aa2[,2])
t.test(aa2[,2],aa3[,2])
boxplot(aa1[,2],aa2[,2],aa3[,2],outline=FALSE)

 <homo>
setwd("D:/project/result/length_6ma")
lncRNA <- read.table("homo_lncRNA_length.txt")
protein <- read.table("homo_protein_length.txt")
hist(lncRNA[,1])
homo_aa1 <- lncRNA[lncRNA[,1]<=10000,]
homo_aa2 <- lncRNA[lncRNA[,1]>10000&lncRNA[,1]<=20000,]
homo_aa3 <- lncRNA[lncRNA[,1]>20000,]

aa5 <- lncRNA[lncRNA[,1]>3000&lncRNA[,1]<=4000,]
aa6 <- lncRNA[lncRNA[,1]>4000,]
nrow(aa1)

nrow(aa2)
nrow(aa3)
nrow(aa4)
nrow(aa5)
nrow(aa6)

as.data.frame(ara_aa1[,2],ara_aa2[,2],ara_aa3[,2],fly_aa1[,2],fly_aa2[,2],fly_aa3[,2],ele_aa1[,2],ele_aa2[,2],ele_aa3[,2],homo_aa1[,2],homo_aa2[,2],homo_aa3[,2])
t.test(aa1[,2],aa2[,2])
t.test(aa2[,2],aa3[,2])
boxplot(ara_aa1[,2],ara_aa2[,2],ara_aa3[,2],fly_aa1[,2],fly_aa2[,2],fly_aa3[,2],ele_aa1[,2],ele_aa2[,2],ele_aa3[,2],homo_aa1[,2],homo_aa2[,2],homo_aa3[,2],outline=FALSE)
boxplot(ara_aa1[,2],ara_aa2[,2],ara_aa3[,2],fly_aa1[,2],fly_aa2[,2],fly_aa3[,2],ele_aa1[,2],ele_aa2[,2],ele_aa3[,2],homo_aa1[,2],homo_aa2[,2],homo_aa3[,2],outline=FALSE,axes=FALSE ,ylab="6mA density",cex=1.2,col=c(rgb(79,129,189,max=255),rgb(155,187,89,max=255),rgb(192,80,77,max=255),"MediumPurple3"),ylab="",las=1, font.lab=1,xlim=c(0,5),ylim=c(0,0.012),main="",cex.lab=1.2,title="",cex.main=1.8)
axis(2,lwd=0.8,las=1)
axis(1,  at = c(1,2,3,4), lwd=0.8, labels = c("GCU","GCC","GCA","GCG"))
density <- as.data.frame(a=ara_aa1[,2],b=ara_aa2[,2],c=ara_aa3[,2],d=fly_aa1[,2],e=fly_aa2[,2],f=fly_aa3[,2],g=ele_aa1[,2],h=ele_aa2[,2],i=ele_aa3[,2],j=homo_aa1[,2],k=homo_aa2[,2],l=homo_aa3[,2])
nrow(ara_aa1)
write.csv(ara_aa1[,2],file="ara_aa1.csv")
write.csv(ara_aa2[,2],file="ara_aa2.csv")
write.csv(ara_aa3[,2],file="ara_aa3.csv")

write.csv(ele_aa1[,2],file="ele_aa1.csv")
write.csv(ele_aa2[,2],file="ele_aa2.csv")
write.csv(ele_aa3[,2],file="ele_aa3.csv")

write.csv(fly_aa1[,2],file="fly_aa1.csv")
write.csv(fly_aa2[,2],file="fly_aa2.csv")
write.csv(fly_aa3[,2],file="fly_aa3.csv")

write.csv(homo_aa1[,2],file="homo_aa1.csv")
write.csv(homo_aa2[,2],file="homo_aa2.csv")
write.csv(homo_aa3[,2],file="homo_aa3.csv")

data <- read.csv("density.csv",header=TRUE)
pdf("length_density.pdf")
boxplot(data,outline=FALSE,axes=FALSE ,ylab="6mA density(‰)",cex=1.2,col=c(rgb(79,129,189,max=255),rgb(155,187,89,max=255),rgb(192,80,77,max=255),"MediumPurple3"),ylab="",las=1, font.lab=1,xlim=c(0,16),ylim=c(0,0.012),main="",cex.lab=1.2,title="",cex.main=1.8)
axis(2,lwd=0.8,las=1)
axis(1,  at = c(2,6,10,14), lwd=0.8, font=3, labels = c("A.thaliana","D.melanogaster","C.elegans","H.sapiens"))
legend("topright",pch=c(15,15,15),col=c(rgb(79,129,189,max=255),rgb(155,187,89,max=255),rgb(192,80,77,max=255),"MediumPurple3"),c("group1","group2","group3"))
box(lwd=0.5)
dev.off()

