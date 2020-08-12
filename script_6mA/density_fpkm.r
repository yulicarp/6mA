#高低6mA密度的lncRNA的表达量差异分析
 <ele>
setwd("D:/project/result/density/ara")
lncRNA <- read.table("lncRNA",header=FALSE)
mean(lncRNA[,1]) 0.004934423
0.0099
0.0025
low_density_lnc.txt
high_density_lnc.txt

setwd("D:/project/result/density_fpkm/ara")
ara_fpkm <- read.table("ara_fpkm_666.txt",stringsAsFactors=FALSE, header = TRUE)
#lncRNA
high <- read.table("high_density_lnc.txt",stringsAsFactors=FALSE,header = FALSE)
low <- read.table("low_density_lnc.txt",stringsAsFactors=FALSE,header = FALSE)
x1 <- ara_fpkm[ara_fpkm$"gene_short_name"%in%high$"V1",]
y1 <- ara_fpkm[ara_fpkm$"gene_short_name"%in%low$"V1",]


t.test(aa1,bb1)


a1 <- x1[,2]
b1 <- y1[,2]

aa <- as.data.frame(a1)
bb <- as.data.frame(b1) 

a1 <- a1[a1>0]
b1 <- b1[b1>0]
a1 <- as.numeric(as.character(a1))
b1 <- as.numeric(as.character(b1))
aa1 <- setdiff(a1, boxplot.stats(a1)$out)
bb1 <- setdiff(b1, boxplot.stats(b1)$out)
t.test(aa1,bb1)

setwd("D:/project/result/density_fpkm/homo")
homo_fpkm <- read.table("homo_fpkm_953.txt",stringsAsFactors=FALSE, header = TRUE)
lncRNA <- read.table("lncRNA_homo_density.txt",stringsAsFactors=FALSE,header = FALSE)
lncRNA_target <- read.csv("homo.csv",stringsAsFactors=FALSE,header = FALSE)
#找到有6mA lncRNA的靶基因
x1 <- lncRNA_target[lncRNA_target$"V1"%in%lncRNA$"V1",]
#一列lncRNA一列靶基因

target <- x1[,2]
target <- as.data.frame(target)

#
fpkm <- homo_fpkm[homo_fpkm$"gene_short_name"%in%x1$"V2",]
lnc <- x1[x1$"V1"%in%fpkm$"gene_short_name",]
lnc_density <- lncRNA[lncRNA$"V1"%in%lnc$"V1",]

y1 <- ara_fpkm[ara_fpkm$"gene_short_name"%in%low$"V1",]
merge_file_2 <- merge(merge_file_1,homo_fpkm,by.x="target",by.y="gene_short_name",all.x=T)
sum(is.na(merge_file_2$"gene_short_name"))
merge_file_1 <- merge(lncRNA_target,lncRNA,by.x="V1",by.y="V1",all.x=T)
names(merge_file_1) <- c("lncRNA","target","density")
plot(merge_file_2[,3],merge_file_2[,4],)
data<-na.omit(merge_file_2)
0.002177352
0.000544338

##################
setwd("D:/project/result/length_fpkm/")
homo_fpkm <- read.table("homo_fpkm.txt",stringsAsFactors=FALSE, header = TRUE)
homo_lnc_length <- read.table("lnc_length_homo.txt",stringsAsFactors=FALSE, header = FALSE)
merge_file_1 <- merge(homo_lnc_length,homo_fpkm,by.x="V1",by.y="gene_short_name",all.x=T)
plot(merge_file_2[,2],merge_file_2[,3],)
cor.test(merge_file_1[,2],merge_file_1[,3],)
data <- merge_file_1[merge_file_1[,3]>0,]

homo_fpkm <- read.table("homo_fpkm.txt",stringsAsFactors=FALSE, header = TRUE)
homo_pro_length <- read.table("pro_length_homo.txt",stringsAsFactors=FALSE, header = FALSE)
merge_file_1 <- merge(homo_pro_length,homo_fpkm,by.x="V1",by.y="gene_short_name",all.x=T)
cor.test(merge_file_1[,2],merge_file_1[,3],)
data <- merge_file_1[merge_file_1[,3]>0,]
cor.test(data[,2],data[,3],)

homo_fpkm <- read.table("homo_fpkm.txt",stringsAsFactors=FALSE, header = TRUE)
homo_length <- read.table("length_homo.txt",stringsAsFactors=FALSE, header = FALSE)
merge_file_1 <- merge(homo_length,homo_fpkm,by.x="V1",by.y="gene_short_name",all.x=T)
cor.test(merge_file_1[,2],merge_file_1[,3],)
data <- merge_file_1[merge_file_1[,3]>0,]
cor.test(data[,2],data[,3],)

#ara
ara_fpkm <- read.table("ara_fpkm.txt",stringsAsFactors=FALSE, header = TRUE)
ara_lnc_length <- read.table("lnc_length_ara.txt",stringsAsFactors=FALSE, header = FALSE)
merge_file_1 <- merge(ara_lnc_length,ara_fpkm,by.x="V1",by.y="gene_short_name",all.x=T)
cor.test(merge_file_1[,2],merge_file_1[,3],)
data <- merge_file_1[merge_file_1[,3]>0,]
cor.test(data[,2],data[,3],)

ara_fpkm <- read.table("ara_fpkm.txt",stringsAsFactors=FALSE, header = TRUE)
ara_pro_length <- read.table("pro_length_ara.txt",stringsAsFactors=FALSE, header = FALSE)
merge_file_1 <- merge(ara_pro_length,ara_fpkm,by.x="V1",by.y="gene_short_name",all.x=T)
cor.test(merge_file_1[,2],merge_file_1[,3])
data <- merge_file_1[merge_file_1[,3]>0,]
cor.test(data[,2],data[,3],)

ara_fpkm <- read.table("ara_fpkm.txt",stringsAsFactors=FALSE, header = TRUE)
ara_length <- read.table("length_ara.txt",stringsAsFactors=FALSE, header = FALSE)
names(ara_length) <- c("gene_short_name","length")

merge_file_1 <- merge(ara_length,ara_fpkm,by.x='gene_short_name',by.y='gene_short_name',all.x=TRUE,sort=TRUE)

data<-na.omit(merge_file_1)
cor.test(merge_file_1[,2],merge_file_1[,3])
data <- merge_file_1[merge_file_1[,3]>0,]
cor.test(data[,2],data[,3],)





a <- data[data[,3]<=0.000544338,]
b <- data[data[,3]>0.002177352,]

binom.test(x=12590,n=17378,p=0.81159188)
binom.test(x=694,n=14675,p=0.142595012)
binom.test(x=39,n=5528,p=0.056949)
binom.test(x=230,n=4034,p=0.158562)


binom.test(x=12590,n=30386,p=0.464155983)






