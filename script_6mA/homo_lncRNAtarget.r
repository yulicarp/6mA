setwd("D:/project/result/fpkm/target_gene")
homo_fpkm <- read.table("homo_fpkm_953.txt",stringsAsFactors=FALSE, header = TRUE)
lncRNA_target <- read.csv("homo.csv",stringsAsFactors=FALSE,header = FALSE)
lncRNA <- read.table("6ma_homolnc.txt",stringsAsFactors=FALSE,header = FALSE)
non6mA_lncRNA <- read.table("non_6ma_homolnc.txt",stringsAsFactors=FALSE,header = FALSE)
#找到有6mAlncRNA的靶基因
x1 <- lncRNA_target[lncRNA_target$"V1"%in%lncRNA$"V1",]
#找到没有6mAlncRNA的靶基因
y1 <- lncRNA_target[lncRNA_target$"V1"%in%non6mA_lncRNA$"V1",]
#有6mAlncRNA的靶基因的基因名单独提取一列
target <- x1[,2]
target <- as.data.frame(target)
non6mA_target <- y1[,2]
non6mA_target <- as.data.frame(non6mA_target)
non6mA_target <- setdiff(non6mA_target,target)

target_fpkm <- homo_fpkm[homo_fpkm$"gene_short_name"%in%target$"target",]
non6mAtarget_fpkm <- homo_fpkm[homo_fpkm$"gene_short_name"%in%non6mA_target$"non6mA_target",]
a <- target_fpkm[target_fpkm[,2]>0,]
b <- non6mAtarget_fpkm[non6mAtarget_fpkm[,2]>0,]
aa <- setdiff(a[,2], boxplot.stats(a[,2])$out)
bb <- setdiff(b[,2], boxplot.stats(b[,2])$out)
t.test(aa,bb)