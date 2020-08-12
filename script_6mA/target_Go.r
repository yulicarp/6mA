setwd("D:/project/result/target_gene")
lncRNA1 <- read.table("homo.txt",stringsAsFactors=FALSE, header = FALSE)
lncRNA_target <- read.csv("human_target_gene.csv",stringsAsFactors=FALSE,header = FALSE)
lncRNA2 <- read.table("6ma_homolnc.txt",stringsAsFactors=FALSE,header = FALSE)
non6mA_lncRNA <- read.table("non_6ma_homolnc.txt",stringsAsFactors=FALSE,header = FALSE)
#找到有6mAlncRNA的靶基因
x1 <- lncRNA_target[lncRNA_target$"V1"%in%lncRNA2$"V1",]
y1 <- lncRNA_target[lncRNA_target$"V2"%in%lncRNA1$"V1",]
write.csv(y1,"ID.csv")
write.csv(x1,"name.csv")

data <- read.table("name.txt",header=TRUE)
data$genenames <- as.character(data$genenames)
# 转换基因名
transID = bitr(data$genenames,
	fromType="ENTREZID",
	toType="SYMBOL",
	OrgDb="org.Hs.eg.db"
)
dir.create("homo")
# protein GO_CC 注释
CC <- enrichGO(transID$ENTREZID,
	"org.Hs.eg.db",
	keyType="ENTREZID",
	ont="CC",
	pvalueCutoff=0.05,
	pAdjustMethod="BH",
	qvalueCutoff=0.1
)
CC <- setReadable(CC, OrgDb=org.Hs.eg.db)

pdf(file="GO_CC_human.pdf", bg="transparent")
dotplot(CC, showCategory=12,font.size=8, title="GO_CC") # + theme(axis.text.y = element_text(angle = 45))
barplot(CC, showCategory=12, title="GO_CC", font.size=8)
dev.off()
write.csv(as.data.frame(CC@result),"GO_CC_human.csv",row.names =FALSE)

# protein GO_MF注释


MF <- enrichGO(transID$ENTREZID, "org.Hs.eg.db", keyType="ENTREZID", ont="MF", pvalueCutoff=0.05, pAdjustMethod="BH", qvalueCutoff=0.1)
MF <- setReadable(MF, org.Hs.eg.db)

pdf(file="GO_MF_human.pdf", bg="transparent")
dotplot(MF, showCategory=12,font.size=8, title="GO_MF")
barplot(MF, showCategory=12, title="GO_MF", font.size=8)
dev.off()
write.csv(as.data.frame(MF@result),"GO_MF_human.csv",row.names =FALSE)

# protein GO_BP注释
library(org.Hs.eg.db)
library(clusterprofiler)
setwd("D:/project/result/target_gene")
data <- read.table("name.txt",header=TRUE)
data$genenames <- as.character(data$genenames)
BP <- enrichGO(transID$ENTREZID, "org.Hs.eg.db", keyType="ENTREZID", ont="BP", pvalueCutoff=0.05, pAdjustMethod="BH", qvalueCutoff=0.1)
BP <- setReadable(BP, org.Hs.eg.db)
png(file="GO_BP_human.pdf", bg="transparent")
pdf(file="GO_BP_human.pdf", bg="transparent")
dotplot(BP, showCategory=12, font.size=8, title="Biological Process") 
#barplot(BP, showCategory=12, title="GO_BP", font.size=8)
dev.off()

write.csv(as.data.frame(BP@result),"GO_BP_human.csv",row.names =FALSE)




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