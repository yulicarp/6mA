#protein
###########
#elegans
setwd("D:/project/result/fpkm/ele")
ele_fpkm <- read.table("ele_fpkm_286.txt",stringsAsFactors=FALSE, header = TRUE)
protein <- read.table("6mA_elepro.txt",stringsAsFactors=FALSE,header = FALSE)
non6mA_protein <- read.table("non_6mA_elepro.txt",stringsAsFactors=FALSE,header = FALSE)
x <- ele_fpkm[ele_fpkm$"gene_short_name"%in%protein$"V1",]
y <- ele_fpkm[ele_fpkm$"gene_short_name"%in%non6mA_protein$"V1",]
a <- x[,2]
b <- y[,2]
a <- a[a>0]
b <- b[b>0]
aa <- setdiff(a, boxplot.stats(a)$out)
bb <- setdiff(b, boxplot.stats(b)$out)
t.test(aa,bb)
write.csv(x,file="pro_6mA.csv")
write.csv(y,file="pro_non6mA.csv")

pdf(file="protein_FPKM_ele.pdf")
boxplot(aa,bb,axes=FALSE ,ylab="FPKM",cex=1.2,col=c(rgb(79,129,189,max=255),rgb(192,80,77,max=255)),las=1, font.lab=1,xlim=c(0,3),ylim=c(0,50
),outline=FALSE,main="C.elegans",font=3,cex.lab = 1.2)
axis(2,lwd=0.8,las=1)
axis(1,  at = c(1,2),lwd=0.8, labels = c("6mA","non-6mA"), font.lab=1,cex.lab = 1.2,cex=1.2)
box(lwd=0.5)

t = 0.092865, df = 10264, p-value = 0.926
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -0.3484170  0.3830715
sample estimates:
mean of x mean of y 
 9.661299  9.643972

#homo
setwd("D:/project/result/fpkm/homo")
homo_fpkm <- read.table("homo_fpkm_953.txt",stringsAsFactors=FALSE, header = TRUE)
protein <- read.table("6ma_homopro.txt",stringsAsFactors=FALSE,header = FALSE)
non6mA_protein <- read.table("non_6ma_homopro.txt",stringsAsFactors=FALSE,header = FALSE)
x <- homo_fpkm[homo_fpkm$"gene_short_name"%in%protein$"V1",]
y <- homo_fpkm[homo_fpkm$"gene_short_name"%in%non6mA_protein$"V1",]
a <- x[,2]
b <- y[,2]
a <- a[a>0]
b <- b[b>0]
aa <- setdiff(a, boxplot.stats(a)$out)
bb <- setdiff(b, boxplot.stats(b)$out)
t.test(aa,bb)
write.csv(x,file="pro_6mA.csv")
write.csv(y,file="pro_non6mA.csv")



   Welch Two Sample t-test

data:  aa and bb
t = 47.674, df = 5812.1, p-value < 2.2e-16
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 2.110171 2.291157
sample estimates:
mean of x mean of y 
2.8302394 0.6295751 


pdf(file="protein_FPKM_homo.pdf")
boxplot(aa,bb,axes=FALSE ,ylab="FPKM",cex=1.2,col=c(rgb(79,129,189,max=255),rgb(192,80,77,max=255)),las=1, font.lab=1,xlim=c(0,3),ylim=c(0,13),outline=FALSE,main="H.sapiens",font=3,cex.lab = 1.2)
axis(2,lwd=0.8,las=1)
axis(1,  at = c(1,2),lwd=0.8, labels = c("6mA","non-6mA"), font.lab=1,cex.lab = 1.2,cex=1.2)
box(lwd=0.5)

#ara
setwd("D:/project/result/fpkm/ara")
ara_fpkm <- read.table("ara_fpkm_666.txt",stringsAsFactors=FALSE, header = TRUE)
protein <- read.table("6mA_arapro.txt",stringsAsFactors=FALSE,header = FALSE)
non6mA_protein <- read.table("non_6mA_arapro.txt",stringsAsFactors=FALSE,header = FALSE)
x <- ara_fpkm[ara_fpkm$"gene_short_name"%in%protein$"V1",]
y <- ara_fpkm[ara_fpkm$"gene_short_name"%in%non6mA_protein$"V1",]
a <- x[,2]
b <- y[,2]
a <- a[a>0]
b <- b[b>0]
a <- as.numeric(as.character(a))
b <- as.numeric(as.character(b))
aa <- setdiff(a, boxplot.stats(a)$out)
bb <- setdiff(b, boxplot.stats(b)$out)
t.test(aa,bb)

write.csv(x,file="pro_6mA.csv")
write.csv(y,file="pro_non6mA.csv")


        Welch Two Sample t-test

data:  aa and bb
t = -7.8137, df = 10720, p-value = 6.074e-15
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -2.093173 -1.253585
sample estimates:
mean of x mean of y 
 12.09456  13.76793 



pdf(file="protein_FPKM_ara.pdf")
boxplot(log10(aa),log10(bb),axes=FALSE ,ylab="FPKM",cex=1.2,col=c(rgb(79,129,189,max=255),rgb(192,80,77,max=255)),las=1, font.lab=1,xlim=c(0,3),ylim=c(0,5),outline=FALSE,main="A.thaliana",font=3,cex.lab = 1.2)
axis(2,lwd=0.8,las=1)
axis(1,  at = c(1,2),lwd=0.8, labels = c("6mA","non-6mA"), font.lab=1,cex.lab = 1.2,cex=1.2)
box(lwd=0.5)




#fly
setwd("D:/project/result/fpkm/fly1")
fly_fpkm <- read.table("fly_fpkm_4.txt",stringsAsFactors=FALSE, header = TRUE)
protein <- read.table("6mA_flypro.txt",stringsAsFactors=FALSE,header = FALSE)
non6mA_protein <- read.table("non_6mA_flypro.txt",stringsAsFactors=FALSE,header = FALSE)
x <- fly_fpkm[fly_fpkm$"gene_short_name"%in%protein$"V1",]
y <- fly_fpkm[fly_fpkm$"gene_short_name"%in%non6mA_protein$"V1",]
a <- x[,2]
b <- y[,2]
a <- a[a>0]
b <- b[b>0]
a <- as.numeric(as.character(a))
b <- as.numeric(as.character(b))
aa <- setdiff(a, boxplot.stats(a)$out)
bb <- setdiff(b, boxplot.stats(b)$out)
t.test(aa,bb)
write.csv(x,file="pro_6mA.csv")
write.csv(y,file="pro_non6mA.csv")


        Welch Two Sample t-test

data:  aa and bb
t = -19.115, df = 8628.6, p-value < 2.2e-16
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -4.183874 -3.405586
sample estimates:
mean of x mean of y 
 7.415899 11.210629 

pdf(file="protein_FPKM_fly.pdf")
boxplot(log10(aa),log10(bb),axes=FALSE ,ylab="FPKM",cex=1.2,col=c(rgb(79,129,189,max=255),rgb(192,80,77,max=255)),las=1, font.lab=1,xlim=c(0,3),ylim=c(0,40),outline=FALSE,main="D.melanogaster",font=3,cex.lab = 1.2)
axis(2,lwd=0.8,las=1)
axis(1,  at = c(1,2),lwd=0.8, labels = c("6mA","non-6mA"), font.lab=1,cex.lab = 1.2,cex=1.2)
box(lwd=0.5)
###################
setwd("D:/project/result/fpkm/")
pdf(file="protein1127.pdf")
data <- read.csv("logpro.csv", header = TRUE)
head(data)
boxplot(data,axes=FALSE ,ylab="log10(FPKM)",cex=1.2,col=c(rgb(79,129,189,max=255),rgb(192,80,77,max=255),""),las=1, font.lab=1,xlim=c(0,13),ylim=c(-5,5),outline=FALSE,main="",cex.lab = 1.2)
axis(2,lwd=0.8,las=1)
axis(1,  at = c(1.5,4.5,7.5,10.5), font=3,lwd=0.8, labels = c("A.thaliana","C.elegans","D.melanogaster","H.sapiens"), font.lab=1,cex.lab = 1.2,cex=1.2)
box(lwd=0.5)
legend("topleft",pch=c(15,15),col=c(rgb(79,129,189,max=255),rgb(192,80,77,max=255)),c("6mA-methylated","-unmethylated"))
dev.off()

