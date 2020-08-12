######################################################arabidopsis####################################
# 导入数据
data <- read.table("protein_ara.txt",header=FALSE)
data$genenames <- as.character(data[,2])
# 转换基因名
transID = bitr(data$genenames,
	fromType="SYMBOL",
	toType=c("SYMBOL","ENTREZID"),
	OrgDb="org.At.tair.db"
)
# GO_CC 注释
CC <- enrichGO(transID$ENTREZID,
	"org.At.tair.db",
	keyType="ENTREZID",
	ont="CC",
	pvalueCutoff=0.05,
	pAdjustMethod="BH",
	qvalueCutoff=0.1
)
CC <- setReadable(CC, OrgDb=org.At.tair.db)

pdf(file="GO_CC_ara.pdf", bg="transparent")
dotplot(CC, showCategory=12,font.size=8, title="GO_CC") # + theme(axis.text.y = element_text(angle = 45))
barplot(CC, showCategory=12, title="GO_CC", font.size=8)
dev.off()
write.csv(as.data.frame(CC@result),"GO_CC_ara.csv",row.names =FALSE)

# GO_MF注释
MF <- enrichGO(transID$ENTREZID, "org.At.tair.db", keyType="ENTREZID", ont="MF", pvalueCutoff=0.05, pAdjustMethod="BH", qvalueCutoff=0.1)
MF <- setReadable(MF, org.At.tair.db)

pdf(file="GO_MF_ara.pdf", bg="transparent")
dotplot(MF, showCategory=12, orderBy="x", font.size=8, title="GO_MF") # + theme(axis.text.y = element_text(angle = 45))
barplot(MF, showCategory=12, title="GO_MF", font.size=8)
dev.off()
write.csv(as.data.frame(MF@result),"GO_MF_ara.csv",row.names =FALSE)

# GO_BP注释
BP <- enrichGO(transID$ENTREZID, "org.At.tair.db", keyType="ENTREZID", ont="BP", pvalueCutoff=0.05, pAdjustMethod="BH", qvalueCutoff=0.1)
BP <- setReadable(BP, org.At.tair.db)

pdf(file="GO_BP_ara.pdf", bg="transparent")
dotplot(BP, showCategory=12, orderBy="x", font.size=8, title="GO_BP") # + theme(axis.text.y = element_text(angle = 45))
barplot(BP, showCategory=12, title="GO_BP", font.size=8)
dev.off()

write.csv(as.data.frame(BP@result),"GO_BP_ara.csv",row.names =FALSE)

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
# GO_CC 注释
CC <- enrichGO(transID$ENTREZID,
	"org.Hs.eg.db",
	keyType="ENTREZID",
	ont="CC",
	pvalueCutoff=0.05,
	pAdjustMethod="BH",
	qvalueCutoff=0.1
)
CC <- setReadable(CC, OrgDb=org.Hs.eg.db)

pdf(file="./homo/GO_CC_human.pdf", bg="transparent")
dotplot(CC, showCategory=12,font.size=8, title="GO_CC") # + theme(axis.text.y = element_text(angle = 45))
#barplot(CC, showCategory=12, title="GO_CC", font.size=8)
dev.off()
write.csv(as.data.frame(CC@result),"./homo/GO_CC_human.csv",row.names =FALSE)

# GO_MF注释
MF <- enrichGO(transID$ENTREZID, "org.Hs.eg.db", keyType="ENTREZID", ont="MF", pvalueCutoff=0.05, pAdjustMethod="BH", qvalueCutoff=0.1)
MF <- setReadable(MF, org.Hs.eg.db)

pdf(file="./homo/GO_MF_human.pdf", bg="transparent")
dotplot(MF, showCategory=12,font.size=8, title="GO_MF")
#barplot(MF, showCategory=12, title="GO_MF", font.size=8)
dev.off()
write.csv(as.data.frame(MF@result),"./homo/GO_MF_human.csv",row.names =FALSE)

# GO_BP注释
BP <- enrichGO(transID$ENTREZID, "org.Hs.eg.db", keyType="ENTREZID", ont="BP", pvalueCutoff=0.05, pAdjustMethod="BH", qvalueCutoff=0.1)
BP <- setReadable(BP, org.Hs.eg.db)

pdf(file="./homo/GO_BP_human.pdf", bg="transparent")
dotplot(BP, showCategory=12, orderBy=""pvalue"", font.size=8, title="GO_BP") 
#barplot(BP, showCategory=12, title="GO_BP", font.size=8)
dev.off()

write.csv(as.data.frame(BP@result),"./homo/GO_BP_human.csv",row.names =FALSE)

######################################################elegans####################################
#elegans#
# 导入数据
data <- read.table("protein_ele.txt",header=TRUE)
data$genenames <- as.character(data$genenames)
# 转换基因名
transID = bitr(data$genenames,
	fromType="ENTREZID",
	toType="SYMBOL",
	OrgDb="org.Ce.eg.db"
)
dir.create("elegans")
# GO_CC 注释
CC <- enrichGO(transID$ENTREZID,
	"org.Ce.eg.db",
	keyType="ENTREZID",
	ont="CC",
	pvalueCutoff=0.05,
	pAdjustMethod="BH",
	qvalueCutoff=0.1
)
CC <- setReadable(CC, OrgDb=org.Ce.eg.db)

pdf(file="./elegans/GO_CC_ele.pdf", bg="transparent")
dotplot(CC, showCategory=12,font.size=8, title="GO_CC") # + theme(axis.text.y = element_text(angle = 45))
#barplot(CC, showCategory=12, title="GO_CC", font.size=8)
dev.off()
write.csv(as.data.frame(CC@result),"./elegans/GO_CC_ele.csv",row.names =FALSE)

# GO_MF注释
MF <- enrichGO(transID$ENTREZID, "org.Ce.eg.db", keyType="ENTREZID", ont="MF", pvalueCutoff=0.05, pAdjustMethod="BH", qvalueCutoff=0.1)
MF <- setReadable(MF, org.Ce.eg.db)

pdf(file="./elegans/GO_MF_ele.pdf", bg="transparent")
dotplot(MF, showCategory=12, orderBy="x", font.size=8, title="GO_MF") # + theme(axis.text.y = element_text(angle = 45))
#barplot(MF, showCategory=12, title="GO_MF", font.size=8)
dev.off()
write.csv(as.data.frame(MF@result),"./elegans/GO_MF_ele.csv",row.names =FALSE)

# GO_BP注释
BP <- enrichGO(transID$ENTREZID, "org.Ce.eg.db", keyType="ENTREZID", ont="BP", pvalueCutoff=0.05, pAdjustMethod="BH", qvalueCutoff=0.1)
BP <- setReadable(BP, org.Ce.eg.db)

pdf(file="./elegans/GO_BP_ele.pdf", bg="transparent")
dotplot(BP, showCategory=12, orderBy="x", font.size=8, title="GO_BP") # + theme(axis.text.y = element_text(angle = 45))
#barplot(BP, showCategory=12, title="GO_BP", font.size=8)
dev.off()

write.csv(as.data.frame(BP@result),"./elegans/GO_BP_ele.csv",row.names =FALSE)
























