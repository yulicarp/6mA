setwd("D:/project/result/fpkm/ele")
ele_fpkm1 <- read.table("ele_fpkm_286.txt",stringsAsFactors=FALSE, header = TRUE)
#ele_fpkm2 <- read.table("ele_fpkm_287.txt",stringsAsFactors=FALSE, header = TRUE)
#6mA-lncRNA names
lncRNA <- read.table("6mA_elelnc.txt",stringsAsFactors=FALSE,header = FALSE)
#non-6mA-lncRNA names
non6mA_lncRNA <- read.table("non_6mA_elelnc.txt",stringsAsFactors=FALSE,header = FALSE)
#6mA_lncRNA_fpkmele_fpkm
x1 <- ele_fpkm1[ele_fpkm1$"gene_short_name"%in%lncRNA$"V1",]
#x1 <- ele_fpkm2[ele_fpkm2$"gene_short_name"%in%lncRNA$"V1",]
#non_6mA_lncRNA_fpkm
y1 <- ele_fpkm1[ele_fpkm1$"gene_short_name"%in%non6mA_lncRNA$"V1",]
#y1 <- ele_fpkm2[ele_fpkm2$"gene_short_name"%in%non6mA_lncRNA$"V1",]
a1 <- x1[,2]
b1 <- y1[,2]
#a1 <- a1[a1>0]
#b1 <- b1[b1>0]
test <- c(a,b)
group <- c(rep("a",18),rep("b",50))
bartlett.test(test~group)
t.test(a,b,var.equal = FALSE)
boxplot.stats(a,b)
aa1 <- !(a %in% boxplot.stats(a1)$out)
bb1 <- !(b %in% boxplot.stats(b1)$out)
aa1 <- setdiff(a1, boxplot.stats(a1)$out)
bb1 <- setdiff(b1, boxplot.stats(b1)$out)


##############################################################################################################################
# protein
setwd("D:/project/result/fpkm/ele")
ele_fpkm1 <- read.table("ele_fpkm_286.txt",stringsAsFactors=FALSE, header = TRUE)
ele_fpkm2 <- read.table("ele_fpkm_287.txt",stringsAsFactors=FALSE, header = TRUE)
#6mA-protein names
protein <- read.table("6mA_elepro.txt",stringsAsFactors=FALSE,header = FALSE)
#non-6mA-lncRNA names
non6mA_protein <- read.table("non_6mA_elepro.txt",stringsAsFactors=FALSE,header = FALSE)
#6mA_lncRNA_fpkmele_fpkm
x <- ele_fpkm1[ele_fpkm1$"gene_short_name"%in%protein$"V1",]
#x <- ele_fpkm2[ele_fpkm2$"gene_short_name"%in%protein$"V1",]
#non_6mA_lncRNA_fpkm
y <- ele_fpkm1[ele_fpkm1$"gene_short_name"%in%non6mA_protein$"V1",]
#y <- ele_fpkm2[ele_fpkm2$"gene_short_name"%in%non6mA_protein$"V1",]

a <- x[,2]
b <- y[,2]
#a <- a[a>0]
#b <- b[b>0]
aa <- setdiff(a, boxplot.stats(a)$out)
bb <- setdiff(b, boxplot.stats(b)$out)
t.test(aa,bb)

par(pin=c(2,5))
##
pdf(file="ele_fpkm_lnc.pdf")
par(pin=c(2,5))
par(mar=c(4,4,6,4))
#par(mfrow=c(1,2))
boxplot(aa1,bb1,outline=FALSE,col=c(rgb(192,80,77,max=255),rgb(79,129,189,max=255)),xlim=c(0,3),las=1, font.lab=1,axes=FALSE ,ylab="FPKM",ylim=c(0,3))
axis(1,  at = c(1,2), lwd=0.8, labels = c("6mA","non-6mA"))
axis(2,lwd=0.8,las=1)
box(lwd=0.8)
dev.off()

pdf(file="ele_fpkm_protein.pdf")
par(pin=c(2,5))
par(mar=c(4,4,6,4))
boxplot(aa,bb,outline=FALSE,col=c(rgb(192,80,77,max=255),rgb(79,129,189,max=255)),xlim=c(0,3),las=1, font.lab=1,axes=FALSE ,ylab="FPKM",ylim=c(0,40))
axis(1,  at = c(1,2), lwd=0.8, labels = c("6mA","non-6mA"))
axis(2,lwd=0.8,las=1)
box(lwd=0.8)
dev.off()

##################homo
setwd("D:/project/result/fpkm/homo")
homo_fpkm <- read.table("homo_fpkm_953.txt",stringsAsFactors=FALSE, header = TRUE)
#lncRNA
lncRNA <- read.table("6ma_homolnc.txt",stringsAsFactors=FALSE,header = FALSE)
non6mA_lncRNA <- read.table("non_6ma_homolnc.txt",stringsAsFactors=FALSE,header = FALSE)
x1 <- homo_fpkm[homo_fpkm$"gene_short_name"%in%lncRNA$"V1",]
y1 <- homo_fpkm[homo_fpkm$"gene_short_name"%in%non6mA_lncRNA$"V1",]
a1 <- x1[,2]
b1 <- y1[,2]
aa1 <- setdiff(a1, boxplot.stats(a1)$out)
bb1 <- setdiff(b1, boxplot.stats(b1)$out)
t.test(aa1,bb1)

pdf(file="homo_fpkm_lnc.pdf")
par(pin=c(2,5))
par(mar=c(4,4,6,4))
#par(mfrow=c(1,2))
boxplot(aa1,bb1,outline=FALSE,col=c(rgb(192,80,77,max=255),rgb(79,129,189,max=255)),xlim=c(0,3),las=1, font.lab=1,axes=FALSE ,ylab="FPKM",ylim=c(0,0.03))
axis(1,  at = c(1,2), lwd=0.8, labels = c("6mA","non-6mA"))
axis(2,lwd=0.8,las=1)
box(lwd=0.8)
dev.off()

#protein
setwd("D:/project/result/fpkm/homo")
protein <- read.table("6ma_homopro.txt",stringsAsFactors=FALSE,header = FALSE)
non6mA_protein <- read.table("non_6ma_homopro.txt",stringsAsFactors=FALSE,header = FALSE)
x <- homo_fpkm[homo_fpkm$"gene_short_name"%in%protein$"V1",]
y <- homo_fpkm[homo_fpkm$"gene_short_name"%in%non6mA_protein$"V1",]
a <- x[,2]
b <- y[,2]
aa <- setdiff(a, boxplot.stats(a)$out)
bb <- setdiff(b, boxplot.stats(b)$out)
t.test(aa,bb)

pdf(file="homo_fpkm_pro.pdf")
par(pin=c(2,5))
par(mar=c(4,4,6,4))
#par(mfrow=c(1,2))
boxplot(aa,bb,outline=FALSE,col=c(rgb(192,80,77,max=255),rgb(79,129,189,max=255)),xlim=c(0,3),las=1, font.lab=1,axes=FALSE ,ylab="FPKM",ylim=c(0,0.2))
axis(1,  at = c(1,2), lwd=0.8, labels = c("6mA","non-6mA"))
axis(2,lwd=0.8,las=1)
box(lwd=0.8)
dev.off()


#protein
pdf(file="homo_fpkm_pro.pdf")
par(pin=c(2,5))
par(mar=c(4,4,6,4))
boxplot(log(aa),log(bb),outline=FALSE,col=c(rgb(192,80,77,max=255),rgb(79,129,189,max=255)),xlim=c(0,3),ylim=c(-12,5),las=1, font.lab=1,axes=FALSE ,ylab="log2(FPKM)")
axis(1,  at = c(1,2), lwd=0.8, labels = c("6mA","non-6mA"))
axis(2,lwd=0.8,las=1)
box(lwd=0.8)
dev.off()
#lncRNA
pdf(file="homo_fpkm_lnc.pdf")
par(pin=c(2,5))
par(mar=c(4,4,6,4))
boxplot(log(aa1),log(bb1),outline=FALSE,col=c(rgb(192,80,77,max=255),rgb(79,129,189,max=255)),xlim=c(0,3),ylim=c(-8,-3),las=1, font.lab=1,axes=FALSE ,ylab="log2(FPKM)")
axis(1,  at = c(1,2), lwd=0.8, labels = c("6mA","non-6mA"))
axis(2,lwd=0.8,las=1)
box(lwd=0.8)
dev.off()


#####################ara
setwd("D:/project/result/fpkm/ara")
ara_fpkm <- read.table("ara_fpkm_666.txt",stringsAsFactors=FALSE, header = TRUE)
#lncRNAmeiyou
lncRNA <- read.table("6mA_aralnc.txt",stringsAsFactors=FALSE,header = FALSE)
non6mA_lncRNA <- read.table("non_6mA_aralnc.txt",stringsAsFactors=FALSE,header = FALSE)
x1 <- ara_fpkm[ara_fpkm$"gene_short_name"%in%lncRNA$"V1",]
y1 <- ara_fpkm[ara_fpkm$"gene_short_name"%in%non6mA_lncRNA$"V1",]
a1 <- x1[,2]
b1 <- y1[,2]

a1 <- as.numeric(as.character(x1[,2]))
b1 <- as.numeric(as.character(y1[,2]))

#aa1 <- setdiff(a1, boxplot.stats(a1)$out)
#bb1 <- setdiff(b1, boxplot.stats(b1)$out)
t.test(aa1,bb1)

#protein*
protein <- read.table("6mA_arapro.txt",stringsAsFactors=FALSE,header = FALSE)
non6mA_protein <- read.table("non_6mA_arapro.txt",stringsAsFactors=FALSE,header = FALSE)
x <- ara_fpkm[ara_fpkm$"gene_short_name"%in%protein$"V1",]
y <- ara_fpkm[ara_fpkm$"gene_short_name"%in%non6mA_protein$"V1",]
a <- x[,2]
b <- y[,2]
#a <- a[a>0]
#b <- b[b>0]
a <- as.numeric(as.character(a))
b <- as.numeric(as.character(b))
aa <- setdiff(a, boxplot.stats(a)$out)
bb <- setdiff(b, boxplot.stats(b)$out)
t.test(aa,bb)
par(pin=c(2,5))
par(mar=c(4,4,6,4))
boxplot(aa1,bb1,outline=FALSE,col=c(rgb(192,80,77,max=255),rgb(79,129,189,max=255)),xlim=c(0,3),las=1, font.lab=1,axes=FALSE ,ylab="log2(FPKM)")
axis(1,  at = c(1,2), lwd=0.8, labels = c("6mA","non-6mA"))
axis(2,lwd=0.8,las=1)
box(lwd=0.8)


<fly>
setwd("D:/project/result/fpkm/fly")
fly_fpkm <- read.table("fly_fpkm_1.txt",stringsAsFactors=FALSE, header = TRUE)
#lncRNAmeiyou
lncRNA <- read.table("6mA_flylnc.txt",stringsAsFactors=FALSE,header = FALSE)
non6mA_lncRNA <- read.table("non_6mA_flylnc.txt",stringsAsFactors=FALSE,header = FALSE)
x1 <- fly_fpkm[fly_fpkm$"gene_short_name"%in%lncRNA$"V1",]
y1 <- fly_fpkm[fly_fpkm$"gene_short_name"%in%non6mA_lncRNA$"V1",]
a1 <- x1[,2]
b1 <- y1[,2]
a1 <- a1[a1>0]
b1 <- b1[b1>0]
a1 <- as.numeric(as.character(a1))
b1 <- as.numeric(as.character(b1))
#aa1 <- setdiff(a1, boxplot.stats(a1)$out)
#bb1 <- setdiff(b1, boxplot.stats(b1)$out)
t.test(aa1,bb1)

#protein<0.05
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
par(pin=c(2,5))
par(mar=c(4,4,6,4))
boxplot(aa1,bb1,outline=FALSE,col=c(rgb(192,80,77,max=255),rgb(79,129,189,max=255)),xlim=c(0,3),las=1, font.lab=1,axes=FALSE ,ylab="log2(FPKM)")
axis(1,  at = c(1,2), lwd=0.8, labels = c("6mA","non-6mA"))
axis(2,lwd=0.8,las=1)
box(lwd=0.8)





