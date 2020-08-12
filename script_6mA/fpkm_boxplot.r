#lncRNA
###########
setwd("D:/project/result/fpkm/ele")
ele_fpkm1 <- read.table("ele_fpkm_286.txt",stringsAsFactors=FALSE, header = TRUE)
lncRNA <- read.table("6mA_elelnc.txt",stringsAsFactors=FALSE,header = FALSE)
non6mA_lncRNA <- read.table("non_6mA_elelnc.txt",stringsAsFactors=FALSE,header = FALSE)
x1 <- ele_fpkm1[ele_fpkm1$"gene_short_name"%in%lncRNA$"V1",]
y1 <- ele_fpkm1[ele_fpkm1$"gene_short_name"%in%non6mA_lncRNA$"V1",]
a1 <- x1[,2]
b1 <- y1[,2]
a1 <- as.numeric(as.character(a1))
b1 <- as.numeric(as.character(b1))
a1 <- a1[a1>0]
b1 <- b1[b1>0]
aa1 <- setdiff(a1, boxplot.stats(a1)$out)
bb1 <- setdiff(b1, boxplot.stats(b1)$out)
t.test(aa1,bb1)
write.csv(aa1,file="ele_6mA.csv")
write.csv(bb1,file="ele_non6mA.csv")
t.test(aa1,bb1)

        Welch Two Sample t-test

data:  aa1 and bb1
t = -0.52741, df = 30.221, p-value = 0.6018
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -0.9998233  0.5893064
sample estimates:
mean of x mean of y 
 1.040340  1.245598 
 
#ele
pdf(file="lncRNA_FPKM_ele.pdf")
boxplot(aa1,bb1,axes=FALSE ,ylab="FPKM",cex=1.2,col=c(rgb(79,129,189,max=255),rgb(192,80,77,max=255)),las=1, font.lab=1,xlim=c(0,3),ylim=c(0,6),outline=FALSE,main="C.elegans",font=3,cex.lab = 1.2)
axis(2,lwd=0.8,las=1)
axis(1,  at = c(1,2),lwd=0.8, labels = c("6mA","non-6mA"), font.lab=1,cex.lab = 1.2,cex=1.2)
box(lwd=0.5)

legend("topleft",pch=c(15,15),col=c(rgb(192,80,77,max=255),rgb(79,129,189,max=255)),c("6mA-methylated","-unmethylated"))

 
  
##############
setwd("D:/project/result/fpkm/homo")
homo_fpkm <- read.table("homo_fpkm_953.txt",stringsAsFactors=FALSE, header = TRUE)
lncRNA <- read.table("6ma_homolnc.txt",stringsAsFactors=FALSE,header = FALSE)
non6mA_lncRNA <- read.table("non_6ma_homolnc.txt",stringsAsFactors=FALSE,header = FALSE)
x1 <- homo_fpkm[homo_fpkm$"gene_short_name"%in%lncRNA$"V1",]
y1 <- homo_fpkm[homo_fpkm$"gene_short_name"%in%non6mA_lncRNA$"V1",]
a1 <- x1[,2]
b1 <- y1[,2]
a1 <- a1[a1>0]
b1 <- b1[b1>0]
aa1 <- setdiff(a1, boxplot.stats(a1)$out)
bb1 <- setdiff(b1, boxplot.stats(b1)$out)
t.test(aa1,bb1)
write.csv(aa1,file="homo_6mA.csv")
write.csv(bb1,file="homo_non6mA.csv")

        Welch Two Sample t-test

data:  aa1 and bb1
t = -2.6147, df = 863.31, p-value = 0.009087
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -0.015065724 -0.002145765
sample estimates:
 mean of x  mean of y 
0.04999254 0.05859828 

write.csv(x1,file="homo_6mA.csv")
write.csv(y1,file="homo_non6mA.csv")


pdf(file="lncRNA_FPKM_homo.pdf")
boxplot(aa1,bb1,axes=FALSE ,ylab="FPKM",cex=1.2,col=c(rgb(79,129,189,max=255),rgb(192,80,77,max=255)),las=1, font.lab=1,xlim=c(0,3),ylim=c(0,0.25),outline=FALSE,main="H.sapiens",font=3,cex.lab = 1.2)
axis(2,lwd=0.8,las=1)
axis(1,  at = c(1,2),lwd=0.8, labels = c("6mA","non-6mA"), font.lab=1,cex.lab = 1.2,cex=1.2)
box(lwd=0.5)





################
setwd("D:/project/result/fpkm/ara")
ara_fpkm <- read.table("ara_fpkm_666.txt",stringsAsFactors=FALSE, header = TRUE)
lncRNA <- read.table("6mA_aralnc.txt",stringsAsFactors=FALSE,header = FALSE)
non6mA_lncRNA <- read.table("non_6mA_aralnc.txt",stringsAsFactors=FALSE,header = FALSE)
x1 <- ara_fpkm[ara_fpkm$"gene_short_name"%in%lncRNA$"V1",]
y1 <- ara_fpkm[ara_fpkm$"gene_short_name"%in%non6mA_lncRNA$"V1",]
a1 <- x1[,2]
b1 <- y1[,2]
a1 <- as.numeric(as.character(x1[,2]))
b1 <- as.numeric(as.character(y1[,2]))
a1 <- a1[a1>0]
b1 <- b1[b1>0]
aa1 <- setdiff(a1, boxplot.stats(a1)$out)
bb1 <- setdiff(b1, boxplot.stats(b1)$out)
t.test(aa1,bb1)
write.csv(aa1,file="ara_6mA.csv")
write.csv(bb1,file="ara_non6mA.csv")
        Welch Two Sample t-test

data:  aa1 and bb1
t = -3.6319, df = 307.38, p-value = 0.0003295
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -8.374286 -2.488846
sample estimates:
mean of x mean of y 
  9.03773  14.46930 
  
write.csv(x1,file="ara_6mA.csv")
write.csv(y1,file="ara_non6mA.csv")

pdf(file="lncRNA_FPKM_ara.pdf")
boxplot(aa1,bb1,axes=FALSE ,ylab="FPKM",cex=1.2,col=c(rgb(79,129,189,max=255),rgb(192,80,77,max=255)),las=1, font.lab=1,xlim=c(0,3),ylim=c(0,60),outline=FALSE,main="A.thaliana",font=3,cex.lab = 1.2)
axis(2,lwd=0.8,las=1)
axis(1,  at = c(1,2),lwd=0.8, labels = c("6mA","non-6mA"), font.lab=1,cex.lab = 1.2,cex=1.2)
box(lwd=0.5)





################
setwd("D:/project/result/fpkm/fly1")
fly_fpkm <- read.table("fly_fpkm_4.txt",stringsAsFactors=FALSE, header = TRUE)
lncRNA <- read.table("6mA_flylnc.txt",stringsAsFactors=FALSE,header = FALSE)
non6mA_lncRNA <- read.table("non_6mA_flylnc.txt",stringsAsFactors=FALSE,header = FALSE)
x1 <- fly_fpkm[fly_fpkm$"gene_short_name"%in%lncRNA$"V1",]
y1 <- fly_fpkm[fly_fpkm$"gene_short_name"%in%non6mA_lncRNA$"V1",]
a1 <- x1[,2]
b1 <- y1[,2]
a1 <- as.numeric(as.character(a1))
b1 <- as.numeric(as.character(b1))
a1 <- a1[a1>0]
b1 <- b1[b1>0]
aa1 <- setdiff(a1, boxplot.stats(a1)$out)
bb1 <- setdiff(b1, boxplot.stats(b1)$out)
t.test(aa1,bb1)
write.csv(x1,file="fly_6mA.csv")
write.csv(y1,file="fly_non6mA.csv")
        Welch Two Sample t-test

data:  aa1 and bb1
t = -6.9699, df = 226.13, p-value = 3.439e-11
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -1.7341842 -0.9697352
sample estimates:
mean of x mean of y 
 1.568836  2.920796
 

write.csv(x1,file="fly_6mA.csv")
write.csv(y1,file="fly_non6mA.csv")

pdf(file="lncRNA_FPKM_fly.pdf")
boxplot(aa1,bb1,axes=FALSE ,ylab="FPKM",cex=1.2,col=c(rgb(79,129,189,max=255),rgb(192,80,77,max=255)),las=1, font.lab=1,xlim=c(0,3),ylim=c(0,11),outline=FALSE,main="D.melanogaster",font=3,cex.lab = 1.2)
axis(2,lwd=0.8,las=1)
axis(1,  at = c(1,2),lwd=0.8, labels = c("6mA","non-6mA"), font.lab=1,cex.lab = 1.2,cex=1.2)
box(lwd=0.5)





##########################
setwd("D:/project/result/fpkm/")
pdf(file="lncRNA1127.pdf")
data <- read.csv("loglnc.csv", header = TRUE)
head(data)
boxplot(data,axes=FALSE ,ylab="log10(FPKM)",cex=1.2,col=c(rgb(79,129,189,max=255),rgb(192,80,77,max=255),""),las=1, font.lab=1,xlim=c(0,13),ylim=c(-4,4),outline=FALSE,main="",cex.lab = 1.2)
axis(2,lwd=0.8,las=1)
axis(1,  at = c(1.5,4.5,7.5,10.5), font=3,lwd=0.8, labels = c("A.thaliana","C.elegans","D.melanogaster","H.sapiens"), font.lab=1,cex.lab = 1.2,cex=1.2)
box(lwd=0.5)
legend("topleft",pch=c(15,15),col=c(rgb(79,129,189,max=255),rgb(192,80,77,max=255)),c("6mA-methylated","-unmethylated"))
dev.off()


