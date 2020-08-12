if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install()


BiocManager::install("AnnotationHub")
library(AnnotationHub)
BiocManager::install("org.At.tair.db")
library(org.At.tair.db)
BiocManager::install("org.Ce.eg.db")
library(org.Ce.eg.db)
BiocManager::install("org.Dm.eg.db")
library(org.Dm.eg.db)
##############ara##########
keytypes(org.At.tair.db)
# 导入数据
setwd("D:/project/result/GO")
dataa <- read.table("lncRNA_ara.txt",header=FALSE)
dataa$genenames <- as.character(dataa[,1])
datab <- read.table("protein_ara.txt",header=FALSE)
datab$genenames <- as.character(datab[,1])
# 转换基因名
keytypes(org.At.tair.db)
"839580" %in% keys(org.At.tair.db,keytype = "ENTREZID")
transIDa <- select(org.At.tair.db, keys= dataa$genenames, columns= c("SYMBOL", "GENENAME"), keytype="ENTREZID")
transIDb <- select(org.At.tair.db, keys= datab$genenames, columns= c("SYMBOL", "GENENAME"), keytype="ENTREZID")
# protein GO_MF注释
MF <- enrichGO(transIDb$ENTREZID, "org.At.tair.db", keyType="ENTREZID", ont="MF", pvalueCutoff=0.05, pAdjustMethod="BH", qvalueCutoff=0.1)
MF <- setReadable(MF, org.At.tair.db)
pdf(file="GO_MF_ara.pdf", bg="transparent")
dotplot(MF, showCategory=12, orderBy="x", font.size=8, title="GO_MF") # + theme(axis.text.y = element_text(angle = 45))
barplot(MF, showCategory=12, title="GO_MF", font.size=8)
dev.off()
write.csv(as.data.frame(MF@result),"GO_MF_ara.csv",row.names =FALSE)
# protein GO_BP注释
BP <- enrichGO(transIDb$ENTREZID, "org.At.tair.db", keyType="ENTREZID", ont="BP", pvalueCutoff=0.05, pAdjustMethod="BH", qvalueCutoff=0.1)
BP <- setReadable(BP, org.At.tair.db)
pdf(file="GO_BP_ara.pdf", bg="transparent")
dotplot(BP, showCategory=12, orderBy="x", font.size=8, title="GO_BP") # + theme(axis.text.y = element_text(angle = 45))
barplot(BP, showCategory=12, title="GO_BP", font.size=8)
dev.off()
write.csv(as.data.frame(BP@result),"GO_BP_ara.csv",row.names =FALSE)


##############ele##########
keytypes(org.Ce.eg.db)
# 导入数据
setwd("D:/project/result/GO")
dataa <- read.table("lncRNA_ele.txt",header=FALSE)
dataa$genenames <- as.character(dataa[,1])
datab <- read.table("protein_ele.txt",header=FALSE)
datab$genenames <- as.character(datab[,1])
"24105210" %in% keys(org.Ce.eg.db,keytype = "ENTREZID")
# 转换基因名
transIDa <- select(org.Ce.eg.db, keys= dataa$genenames, columns= c("SYMBOL", "GENENAME"), keytype="ENTREZID")
transIDb <- select(org.Ce.eg.db, keys= datab$genenames, columns= c("SYMBOL", "GENENAME"), keytype="ENTREZID")

# protein GO_MF注释
MF <- enrichGO(transIDb$ENTREZID, "org.Ce.eg.db", keyType="ENTREZID", ont="MF", pvalueCutoff=0.05, pAdjustMethod="BH", qvalueCutoff=0.1)
MF <- setReadable(MF, org.Ce.eg.db)
pdf(file="GO_MF_ele.pdf", bg="transparent")
dotplot(MF, showCategory=12, orderBy="x", font.size=8, title="GO_MF") # + theme(axis.text.y = element_text(angle = 45))
barplot(MF, showCategory=12, title="GO_MF", font.size=8)
dev.off()
write.csv(as.data.frame(MF@result),"GO_MF_ele.csv",row.names =FALSE)

# protein GO_BP注释
BP <- enrichGO(transIDb$ENTREZID, "org.Ce.eg.db", keyType="ENTREZID", ont="BP", pvalueCutoff=0.05, pAdjustMethod="BH", qvalueCutoff=0.1)
BP <- setReadable(BP, org.Ce.eg.db)
pdf(file="GO_BP_ele.pdf", bg="transparent")
dotplot(BP, showCategory=12, orderBy="x", font.size=8, title="GO_BP") # + theme(axis.text.y = element_text(angle = 45))
barplot(BP, showCategory=12, title="GO_BP", font.size=8)
dev.off()
write.csv(as.data.frame(BP@result),"GO_BP_ele.csv",row.names =FALSE)

#################homo############
######################################################homo####################################
#homo#library(org.Hs.eg.db)
# 导入数据
data <- read.table("protein_homo.txt",header=TRUE)
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
BP <- enrichGO(transID$ENTREZID, "org.Hs.eg.db", keyType="ENTREZID", ont="BP", pvalueCutoff=0.05, pAdjustMethod="BH", qvalueCutoff=0.1)
BP <- setReadable(BP, org.Hs.eg.db)

pdf(file="GO_BP_human.pdf", bg="transparent")
dotplot(BP, showCategory=12, font.size=8, title="GO_BP") 
barplot(BP, showCategory=12, title="GO_BP", font.size=8)
dev.off()

write.csv(as.data.frame(BP@result),"GO_BP_human.csv",row.names =FALSE)

######################################################fly####################################
setwd("D:/project/result/GO")
library(org.Dm.eg.db)
dataa <- read.table("lncRNA_fly.txt",header=FALSE)
dataa$genenames <- as.character(dataa[,1])
datab <- read.table("protein_fly.txt",header=FALSE)
datab$genenames <- as.character(datab[,1])
# 转换基因名
transID = bitr(datab$genenames,
	fromType="ENTREZID",
	toType="SYMBOL",
	OrgDb="org.Dm.eg.db"
)
# protein GO_CC注释
CC <- enrichGO(transID$ENTREZID,
	"org.Dm.eg.db",
	keyType="ENTREZID",
	ont="CC",
	pvalueCutoff=0.05,
	pAdjustMethod="BH",
	qvalueCutoff=0.1
)
CC <- setReadable(CC, OrgDb=org.Dm.eg.db)

pdf(file="GO_CC_fly.pdf", bg="transparent")
dotplot(CC, showCategory=12,font.size=8, title="GO_CC") # + theme(axis.text.y = element_text(angle = 45))
barplot(CC, showCategory=12, title="GO_CC", font.size=8)
dev.off()
write.csv(as.data.frame(CC@result),"GO_CC_fly.csv",row.names =FALSE)

# protein GO_MF注释
MF <- enrichGO(transID$ENTREZID, "org.Dm.eg.db", keyType="ENTREZID", ont="MF", pvalueCutoff=0.05, pAdjustMethod="BH", qvalueCutoff=0.1)
MF <- setReadable(MF, org.Dm.eg.db)

pdf(file="GO_MF_fly.pdf", bg="transparent")
dotplot(MF, showCategory=12,font.size=8, title="GO_MF")
barplot(MF, showCategory=12, title="GO_MF", font.size=8)
dev.off()
write.csv(as.data.frame(MF@result),"GO_MF_fly.csv",row.names =FALSE)

# protein GO_BP注释
BP <- enrichGO(transID$ENTREZID, "org.Dm.eg.db", keyType="ENTREZID", ont="BP", pvalueCutoff=0.05, pAdjustMethod="BH", qvalueCutoff=0.1)
BP <- setReadable(BP, org.Dm.eg.db)

pdf(file="GO_BP_fly.pdf", bg="transparent")
dotplot(BP, showCategory=12, font.size=8, title="GO_BP") 
barplot(BP, showCategory=12, title="GO_BP", font.size=8)
dev.off()

write.csv(as.data.frame(BP@result),"GO_BP_fly.csv",row.names =FALSE)



