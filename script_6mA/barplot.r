setwd("D:/project/result/density")
pdf(file="barplot2.pdf")
par(pin=c(2,5))
par(mar=c(4,4,5,7))
homo <- read.csv("homo_density.csv", header = TRUE)
fly <- read.csv("fly_density.csv", header = TRUE)
ara <- read.csv("ara_density.csv", header = TRUE)
ele <- read.csv("ele_density.csv", header = TRUE)
y1 <- c(mean(homo[,1],na.rm=TRUE),mean(homo[,2],na.rm=TRUE),mean(homo[,3],na.rm=TRUE),mean(homo[,4],na.rm=TRUE),mean(homo[,5],na.rm=TRUE),mean(homo[,6],na.rm=TRUE)) 
y2 <- c(mean(fly[,1],na.rm=TRUE),mean(fly[,2],na.rm=TRUE),mean(fly[,3],na.rm=TRUE),mean(fly[,4],na.rm=TRUE),mean(fly[,5],na.rm=TRUE),mean(fly[,6],na.rm=TRUE)) 
y3 <- c(mean(ara[,1],na.rm=TRUE),mean(ara[,2],na.rm=TRUE),mean(ara[,3],na.rm=TRUE),mean(ara[,4],na.rm=TRUE),mean(ara[,5],na.rm=TRUE),mean(ara[,6],na.rm=TRUE)) 
y4 <- c(mean(ele[,1],na.rm=TRUE),mean(ele[,2],na.rm=TRUE),mean(ele[,3],na.rm=TRUE),mean(ele[,4],na.rm=TRUE),mean(ele[,5],na.rm=TRUE),mean(ele[,6],na.rm=TRUE)) 

data <- data.frame(A.thaliana=y3, C.elegans=y4, D.melanogaster= y2, H.sapiens= y1)
a <- as.matrix(data)
#barplot(a, beside=T, ylab="6mA density", width=c(0.1,0.1,0.1,0.1,0.1,0.1,0.3,0.3,0.3,0.3,0.3,0.3), ylim=c(0,0.08), col=c("#FF7F50", "#34A853","#6A5ACD","#FBBC05", "#4285F4","#EA4335"))
#legend(0.5,0.08,pch=15, cex=1.3,bty="n",c("tRNA","miRNA","snRNA","rRNA","lncRNA","protein_coding"),col=c("#FF7F50", "#34A853","#6A5ACD","#FBBC05", "#4285F4","#EA4335"))
barplot(a, beside=T, ylab="6mA density", width=c(0.1,0.1,0.1,0.1,0.1,0.1,0.3,0.3,0.3,0.3,0.3,0.3), ylim=c(0,0.055), col=c("#FF7F50", "#34A853","#6A5ACD","#FBBC05", "#4285F4","#EA4335"))
legend(0.2,0.055,pch=15, cex=1.3,c("tRNA","miRNA","snRNA","rRNA","lncRNA","protein_coding"),col=c("#FF7F50", "#34A853","#6A5ACD","#FBBC05", "#4285F4","#EA4335"))

dev.off()


"#4285F4", "#34A853", "#FBBC05", "#EA4335", "#A6CECC", "#B7CE6E", 
"#4285F4", "#34A853", "#FBBC05", "#EA4335"
"#6A5ACD"

"#FF7F50","	#4169E1","#EA4335","#00BFFF","#3CB371","#4285F4"
"#FF7F50","	#4169E1","#FF00FF","#00BFFF","#EA4335","#4285F4"
setwd("D:/project/result/ratio")
data <- read.table("11.txt", header = FALSE)
ara <- data[,1:6]
ele <- data[,7:12]
fly <- data[,13:18]
homo <- data[,19:24]
y1 <- c(mean(homo[,1],na.rm=TRUE),mean(homo[,2],na.rm=TRUE),mean(homo[,3],na.rm=TRUE),mean(homo[,4],na.rm=TRUE),mean(homo[,5],na.rm=TRUE),mean(homo[,6],na.rm=TRUE)) 
y2 <- c(mean(fly[,1],na.rm=TRUE),mean(fly[,2],na.rm=TRUE),mean(fly[,3],na.rm=TRUE),mean(fly[,4],na.rm=TRUE),mean(fly[,5],na.rm=TRUE),mean(fly[,6],na.rm=TRUE)) 
y3 <- c(mean(ara[,1],na.rm=TRUE),mean(ara[,2],na.rm=TRUE),mean(ara[,3],na.rm=TRUE),mean(ara[,4],na.rm=TRUE),mean(ara[,5],na.rm=TRUE),mean(ara[,6],na.rm=TRUE)) 
y4 <- c(mean(ele[,1],na.rm=TRUE),mean(ele[,2],na.rm=TRUE),mean(ele[,3],na.rm=TRUE),mean(ele[,4],na.rm=TRUE),mean(ele[,5],na.rm=TRUE),mean(ele[,6],na.rm=TRUE)) 
a <- data.frame(A.thaliana=y3, C.elegans=y4, D.melanogaster= y2, H.sapiens= y1)
b <- as.matrix(a)
pdf(file="6mA_ratio_RNA.pdf")
barplot(b, beside=T, ylab="Ratio", width=c(0.1,0.1,0.1,0.1,0.1,0.1,0.3,0.3,0.3,0.3,0.3,0.3), ylim=c(0,1), col=c("#FF7F50", "#34A853","#6A5ACD","#FBBC05", "#4285F4","#EA4335"))
legend(0.2,1.0,pch=15, cex=1.3,c("tRNA","miRNA","snRNA","rRNA","lncRNA","protein_coding"),col=c("#FF7F50", "#34A853","#6A5ACD","#FBBC05", "#4285F4","#EA4335"))
dev.off()
barplot(data)
data <



