setwd("D:/project/result/AT_density")
<ara>
#lncRNA
awk '{if($7>0)print $3"\t"$4"\t"$5"\t"$3"_"$4"_"$5"_"$2"_"$1}' lncRNA_6ma_density > lncRNA_standard.bed
bedtools getfasta -fi /home/data4/pacbio/arabidopsis/genome/TAIR10.1.fna -bed lncRNA_standard.bed -name -fo lncRNA.fa
awk 'BEGIN{OFS="\t"}{if(/^>/){gsub(">","",$0);split($0,A,"_");}else{sum1=gsub(/[AaTt]/,"&",$0);sum=gsub(/[AaTtGgCc]/,"&",$0);print A[1]"_"A[2],A[3],A[4],A[1]"_"A[2]"_"A[3]"_"A[4]"_"A[5]"_"A[6]"_"sum1"_"sum1/sum}}' lncRNA.fa > lncRNA_A.bed
intersectBed -loj -a lncRNA_A.bed -b /home/data4/pacbio/arabidopsis/6ma_666/6ma_666cov25.bed | awk '{if($6<0){a[$4]=="0"}else{a[$4]+=1}}END{for(i in a)print i,a[i]}' | awk '{if($2==""){print $1,"0"}else{print $0}}' | awk '{split($1,A,"_");print A[6]"\t"A[5]"\t"A[1]"_"A[2]"\t"A[3]"\t"A[4]"\t"A[7]"\t"A[8]"\t"$2"\t"$2/A[7]}' > lnc_density
awk '{print $7"\t"$9}' lncdensity > ara_lnc_density.txt

lncRNA <- read.table("ara_lnc_density.txt",stringsAsFactors=FALSE,header=FALSE)
mean(lncRNA[,2])
aa1 <- lncRNA[lncRNA[,2]<=0.0024,]
aa2 <- lncRNA[lncRNA[,2]>=0.0099,]
t.test(aa1[,1],aa2[,1])
pdf(file="ara_lnc.pdf")
par(pin=c(2,5))
par(mar=c(4,4,4,4))
boxplot(aa1[,1],aa2[,1],axes=FALSE,outline=FALSE,ylab="(A+T)%",cex=1.2,col=c(rgb(79,129,189,max=255),rgb(192,80,77,max=255),""),xlim=c(0,3),ylim=c(0.4,0.8),las=1, font.lab=1,main="",cex.lab = 1.2)
axis(2,lwd=0.8,las=1)
axis(1, lwd=0.8, at=c(1,2),labels = c("low 6mA density","high 6mA density"), font.lab=1,cex.lab = 1.2,cex=1.2)
box(lwd=0.5)
 lncRNA
 0.0099
 0.0024
 
#protein
awk '{if($7>0)print $3"\t"$4"\t"$5"\t"$3"_"$4"_"$5"_"$2"_"$1}' protein_6ma_density > protein_standard.bed
bedtools getfasta -fi /home/data4/pacbio/arabidopsis/genome/TAIR10.1.fna -bed protein_standard.bed -name -fo protein.fa
awk 'BEGIN{OFS="\t"}{if(/^>/){gsub(">","",$0);split($0,A,"_");}else{sum1=gsub(/[AaTt]/,"&",$0);sum=gsub(/[AaTtGgCc]/,"&",$0);print A[1]"_"A[2],A[3],A[4],A[1]"_"A[2]"_"A[3]"_"A[4]"_"A[5]"_"A[6]"_"sum1"_"sum1/sum}}' protein.fa > protein_A.bed
intersectBed -loj -a protein_A.bed -b /home/data4/pacbio/arabidopsis/6ma_666/6ma_666cov25.bed | awk '{if($6<0){a[$4]=="0"}else{a[$4]+=1}}END{for(i in a)print i,a[i]}' | awk '{if($2==""){print $1,"0"}else{print $0}}' | awk '{split($1,A,"_");print A[6]"\t"A[5]"\t"A[1]"_"A[2]"\t"A[3]"\t"A[4]"\t"A[7]"\t"A[8]"\t"$2"\t"$2/A[7]}' > pro_density
awk '{print $7"\t"$9}' prodensity > ara_pro_density.txt
protein <- read.table("ara_pro_density.txt",stringsAsFactors=FALSE,header=FALSE)
mean(protein[,2])
aa1 <- protein[protein[,2]<=0.00084,]
aa2 <- protein[protein[,2]>=0.0034,]
t.test(aa1[,1],aa2[,1])
pdf(file="ara_pro.pdf")
par(pin=c(2,5))
par(mar=c(4,4,4,4))
boxplot(aa1[,1],aa2[,1],axes=FALSE,outline=FALSE,ylab="(A+T)%",cex=1.2,col=c(rgb(79,129,189,max=255),rgb(192,80,77,max=255),""),xlim=c(0,3),ylim=c(0.45,0.8),las=1, font.lab=1,main="",cex.lab = 1.2)
axis(2,lwd=0.8,las=1)
axis(1, lwd=0.8, at=c(1,2),labels = c("low 6mA density","high 6mA density"), font.lab=1,cex.lab = 1.2,cex=1.2)
box(lwd=0.5)
dev.off()
 protein
 0.001683819
 0.0034
 0.00084


aa1 <- lncRNA[lncRNA[,1]<=0.5,]
aa2 <- lncRNA[lncRNA[,1]>=0.5,]
#aa1 <- setdiff(aa1, boxplot.stats(aa1)$out)
#aa <- setdiff(aa2[,2], boxplot.stats(aa2[,2])$out)
t.test(aa1[,2],aa2[,2])
boxplot(aa1[,2],aa2[,2]),outline=FALSE)

aa1 <- lncRNA[lncRNA[,2]<=0.0024,]
aa2 <- lncRNA[lncRNA[,2]>0.0099,]
t.test(aa1[,2],aa2[,2])
 
 


<ele>
#lncRNA
awk '{if($7>0)print $3"\t"$4"\t"$5"\t"$3"_"$4"_"$5"_"$2"_"$1}' lncRNA_6ma_density > lncRNA_standard.bed
bedtools getfasta -fi /home/data4/pacbio/Caenorhabditis_elegans/genome/c_elegans.fna -bed lncRNA_standard.bed -name -fo lncRNA.fa
awk 'BEGIN{OFS="\t"}{if(/^>/){gsub(">","",$0);split($0,A,"_");}else{sum1=gsub(/[AaTt]/,"&",$0);sum=gsub(/[AaTtGgCc]/,"&",$0);print A[1]"_"A[2],A[3],A[4],A[1]"_"A[2]"_"A[3]"_"A[4]"_"A[5]"_"A[6]"_"sum1"_"sum1/sum}}' lncRNA.fa > lncRNA_A.bed
intersectBed -loj -a lncRNA_A.bed -b /home/data4/pacbio/Caenorhabditis_elegans/6ma_cov/6ma_elecov25.bed | awk '{if($6<0){a[$4]=="0"}else{a[$4]+=1}}END{for(i in a)print i,a[i]}' | awk '{if($2==""){print $1,"0"}else{print $0}}' | awk '{split($1,A,"_");print A[6]"\t"A[5]"\t"A[1]"_"A[2]"\t"A[3]"\t"A[4]"\t"A[7]"\t"A[8]"\t"$2"\t"$2/A[7]}' > lnc_density
awk '{print $7"\t"$9}' lnc_density > ele_lnc_density.txt
lncRNA <- read.table("ele_lnc_density.txt",stringsAsFactors=FALSE,header=FALSE)
mean(lncRNA[,2])
aa1 <- lncRNA[lncRNA[,2]<0.0007,]
aa2 <- lncRNA[lncRNA[,2]>0.003,]
t.test(aa1[,1],aa2[,1])
pdf(file="ele_lnc.pdf")
par(pin=c(2,5))
par(mar=c(4,4,4,4))
boxplot(aa1[,1],aa2[,1],axes=FALSE,outline=FALSE,ylab="(A+T)%",cex=1.2,col=c(rgb(79,129,189,max=255),rgb(192,80,77,max=255),""),xlim=c(0,3),ylim=c(0.63,0.75),las=1, font.lab=1,main="",cex.lab = 1.2)
axis(2,lwd=0.8,las=1)
axis(1, lwd=0.8, at=c(1,2),labels = c("low 6mA density","high 6mA density"), font.lab=1,cex.lab = 1.2,cex=1.2)
box(lwd=0.5)

0.001476283
0.003
0.0007


#protein
awk '{if($7>0)print $3"\t"$4"\t"$5"\t"$3"_"$4"_"$5"_"$2"_"$1}' protein_6ma_density > protein_standard.bed
bedtools getfasta -fi /home/data4/pacbio/Caenorhabditis_elegans/genome/c_elegans.fna -bed protein_standard.bed -name -fo protein.fa
awk 'BEGIN{OFS="\t"}{if(/^>/){gsub(">","",$0);split($0,A,"_");}else{sum1=gsub(/[AaTt]/,"&",$0);sum=gsub(/[AaTtGgCc]/,"&",$0);print A[1]"_"A[2],A[3],A[4],A[1]"_"A[2]"_"A[3]"_"A[4]"_"A[5]"_"A[6]"_"sum1"_"sum1/sum}}' protein.fa > protein_A.bed
intersectBed -loj -a protein_A.bed -b /home/data4/pacbio/Caenorhabditis_elegans/6ma_cov/6ma_elecov25.bed | awk '{if($6<0){a[$4]=="0"}else{a[$4]+=1}}END{for(i in a)print i,a[i]}' | awk '{if($2==""){print $1,"0"}else{print $0}}' | awk '{split($1,A,"_");print A[6]"\t"A[5]"\t"A[1]"_"A[2]"\t"A[3]"\t"A[4]"\t"A[7]"\t"A[8]"\t"$2"\t"$2/A[7]}' > pro_density
awk '{print $7"\t"$9}' pro_density > ele_pro_density.txt
protein <- read.table("ele_pro_density.txt",stringsAsFactors=FALSE,header=FALSE)
mean(protein[,2])
aa1 <- protein[protein[,2]<=0.0004,]
aa2 <- protein[protein[,2]>=0.0018,]
t.test(aa1[,1],aa2[,1])
pdf(file="ele_pro.pdf")
par(pin=c(2,5))
par(mar=c(4,4,4,4))
boxplot(aa1[,1],aa2[,1],axes=FALSE,outline=FALSE,ylab="(A+T)%",cex=1.2,col=c(rgb(79,129,189,max=255),rgb(192,80,77,max=255),""),xlim=c(0,3),ylim=c(0.45,0.8),las=1, font.lab=1,main="",cex.lab = 1.2)
axis(2,lwd=0.8,las=1)
axis(1, lwd=0.8, at=c(1,2),labels = c("low 6mA density","high 6mA density"), font.lab=1,cex.lab = 1.2,cex=1.2)
box(lwd=0.5)
dev.off()
0.0009167133
0.0018
0.0004

<fly>
awk '{if($7>0)print $3"\t"$4"\t"$5"\t"$3"_"$4"_"$5"_"$2"_"$1}' lncRNA_6ma_density > lncRNA_standard.bed
bedtools getfasta -fi /home/data4/pacbio/Drosophila_melanogaster/genome/D_melanogaster.fna -bed lncRNA_standard.bed -name -fo lncRNA.fa
awk 'BEGIN{OFS="\t"}{if(/^>/){gsub(">","",$0);split($0,A,"_");}else{sum1=gsub(/[AaTt]/,"&",$0);sum=gsub(/[AaTtGgCc]/,"&",$0);print A[1]"_"A[2],A[3],A[4],A[1]"_"A[2]"_"A[3]"_"A[4]"_"A[5]"_"A[6]"_"sum1"_"sum1/sum}}' lncRNA.fa > lncRNA_A.bed
intersectBed -loj -a lncRNA_A.bed -b /home/data4/pacbio/Drosophila_melanogaster/6ma_cov/6ma.bed | awk '{if($6<0){a[$4]=="0"}else{a[$4]+=1}}END{for(i in a)print i,a[i]}' | awk '{if($2==""){print $1,"0"}else{print $0}}' | awk '{split($1,A,"_");print A[6]"\t"A[5]"\t"A[1]"_"A[2]"\t"A[3]"\t"A[4]"\t"A[7]"\t"A[8]"\t"$2"\t"$2/A[7]}' > lnc_density
awk '{print $7"\t"$9}' lnc_density > fly_lnc_density.txt
lncRNA <- read.table("fly_lnc_density.txt",stringsAsFactors=FALSE,header=FALSE)
mean(lncRNA[,2])

aa1 <- lncRNA[lncRNA[,2]<=0.0011,]
aa2 <- lncRNA[lncRNA[,2]>=0.0045,]
t.test(aa1[,1],aa2[,1])
pdf(file="fly_lnc.pdf")
par(pin=c(2,5))
par(mar=c(4,4,4,4))
boxplot(aa1[,1],aa2[,1],axes=FALSE,outline=FALSE,ylab="(A+T)%",cex=1.2,col=c(rgb(79,129,189,max=255),rgb(192,80,77,max=255),""),xlim=c(0,3),ylim=c(0.45,0.75),las=1, font.lab=1,main="",cex.lab = 1.2)
axis(2,lwd=0.8,las=1)
axis(1, lwd=0.8, at=c(1,2),labels = c("low 6mA density","high 6mA density"), font.lab=1,cex.lab = 1.2,cex=1.2)
box(lwd=0.5)

0.002256054
0.0045
0.0011
#protein
awk '{if($7>0)print $3"\t"$4"\t"$5"\t"$3"_"$4"_"$5"_"$2"_"$1}' protein_6ma_density > protein_standard.bed
bedtools getfasta -fi /home/data4/pacbio/Drosophila_melanogaster/genome/D_melanogaster.fna -bed protein_standard.bed -name -fo protein.fa
awk 'BEGIN{OFS="\t"}{if(/^>/){gsub(">","",$0);split($0,A,"_");}else{sum1=gsub(/[AaTt]/,"&",$0);sum=gsub(/[AaTtGgCc]/,"&",$0);print A[1]"_"A[2],A[3],A[4],A[1]"_"A[2]"_"A[3]"_"A[4]"_"A[5]"_"A[6]"_"sum1"_"sum1/sum}}' protein.fa > protein_A.bed
intersectBed -loj -a protein_A.bed -b /home/data4/pacbio/Drosophila_melanogaster/6ma_cov/6ma.bed | awk '{if($6<0){a[$4]=="0"}else{a[$4]+=1}}END{for(i in a)print i,a[i]}' | awk '{if($2==""){print $1,"0"}else{print $0}}' | awk '{split($1,A,"_");print A[6]"\t"A[5]"\t"A[1]"_"A[2]"\t"A[3]"\t"A[4]"\t"A[7]"\t"A[8]"\t"$2"\t"$2/A[7]}' > pro_density
awk '{print $7"\t"$9}' pro_density > fly_pro_density.txt
protein <- read.table("fly_pro_density.txt",stringsAsFactors=FALSE,header=FALSE)
mean(protein[,2])

aa1 <- protein[protein[,2]<=0.00049,]
aa2 <- protein[protein[,2]>=0.0020,]
t.test(aa1[,1],aa2[,1])

pdf(file="fly_pro.pdf")
par(pin=c(2,5))
par(mar=c(4,4,4,4))
boxplot(aa1[,1],aa2[,1],axes=FALSE,outline=FALSE,ylab="(A+T)%",cex=1.2,col=c(rgb(79,129,189,max=255),rgb(192,80,77,max=255),""),xlim=c(0,3),ylim=c(0.4,0.75),las=1, font.lab=1,main="",cex.lab = 1.2)
axis(2,lwd=0.8,las=1)
axis(1, lwd=0.8, at=c(1,2),labels = c("low 6mA density","high 6mA density"), font.lab=1,cex.lab = 1.2,cex=1.2)
box(lwd=0.5)
dev.off()
0.0009753886
0.0020
0.00049

<homo>
#lncRNA
awk '{if($7>0)print $3"\t"$4"\t"$5"\t"$3"_"$4"_"$5"_"$2"_"$1}' lncRNA_6ma_density > lncRNA_standard.bed
bedtools getfasta -fi /home/data4/pacbio/homo/genome/GCF_000001405.38_GRCh38.p12_genomic.fna -bed lncRNA_standard.bed -name -fo lncRNA.fa
awk 'BEGIN{OFS="\t"}{if(/^>/){gsub(">","",$0);split($0,A,"_");}else{sum1=gsub(/[AaTt]/,"&",$0);sum=gsub(/[AaTtGgCc]/,"&",$0);print A[1]"_"A[2],A[3],A[4],A[1]"_"A[2]"_"A[3]"_"A[4]"_"A[5]"_"A[6]"_"sum1"_"sum1/sum}}' lncRNA.fa > lncRNA_A.bed
intersectBed -loj -a lncRNA_A.bed -b /home/data4/pacbio/homo/6ma/953/6ma_953cov25.bed | awk '{if($6<0){a[$4]=="0"}else{a[$4]+=1}}END{for(i in a)print i,a[i]}' | awk '{if($2==""){print $1,"0"}else{print $0}}' | awk '{split($1,A,"_");print A[6]"\t"A[5]"\t"A[1]"_"A[2]"\t"A[3]"\t"A[4]"\t"A[7]"\t"A[8]"\t"$2"\t"$2/A[7]}' > lnc_density
awk '{print $7"\t"$9}' lnc_density > homo_lnc_density.txt
lncRNA <- read.table("homo_lnc_density.txt",stringsAsFactors=FALSE,header=FALSE)
mean(lncRNA[,2])

aa1 <- lncRNA[lncRNA[,2]<=0.00056,]
aa2 <- lncRNA[lncRNA[,2]>=0.0022,]
t.test(aa1[,1],aa2[,1])
pdf(file="human_lnc.pdf")
par(pin=c(2,5))
par(mar=c(4,4,4,4))
boxplot(aa1[,1],aa2[,1],axes=FALSE,outline=FALSE,ylab="(A+T)%",cex=1.2,col=c(rgb(79,129,189,max=255),rgb(192,80,77,max=255),""),xlim=c(0,3),ylim=c(0.25,0.8),las=1, font.lab=1,main="",cex.lab = 1.2)
axis(2,lwd=0.8,las=1)
axis(1, lwd=0.8, at=c(1,2),labels = c("low 6mA density","high 6mA density"), font.lab=1,cex.lab = 1.2,cex=1.2)
box(lwd=0.5)
0.001115543
0.0022
0.00056

#protein
awk '{if($7>0)print $3"\t"$4"\t"$5"\t"$3"_"$4"_"$5"_"$2"_"$1}' protein_6ma_density > protein_standard.bed
bedtools getfasta -fi /home/data4/pacbio/homo/genome/GCF_000001405.38_GRCh38.p12_genomic.fna -bed protein_standard.bed -name -fo protein.fa
awk 'BEGIN{OFS="\t"}{if(/^>/){gsub(">","",$0);split($0,A,"_");}else{sum1=gsub(/[AaTt]/,"&",$0);sum=gsub(/[AaTtGgCc]/,"&",$0);print A[1]"_"A[2],A[3],A[4],A[1]"_"A[2]"_"A[3]"_"A[4]"_"A[5]"_"A[6]"_"sum1"_"sum1/sum}}' protein.fa > protein_A.bed
intersectBed -loj -a protein_A.bed -b /home/data4/pacbio/homo/6ma/953/6ma_953cov25.bed | awk '{if($6<0){a[$4]=="0"}else{a[$4]+=1}}END{for(i in a)print i,a[i]}' | awk '{if($2==""){print $1,"0"}else{print $0}}' | awk '{split($1,A,"_");print A[6]"\t"A[5]"\t"A[1]"_"A[2]"\t"A[3]"\t"A[4]"\t"A[7]"\t"A[8]"\t"$2"\t"$2/A[7]}' > pro_density
awk '{print $7"\t"$9}' pro_density > homo_pro_density.txt
protein <- read.table("homo_pro_density.txt",stringsAsFactors=FALSE,header=FALSE)
mean(protein[,2])

aa1 <- protein[protein[,2]<=0.00064,]
aa2 <- protein[protein[,2]>=0.0026,]
t.test(aa1[,1],aa2[,1])

pdf(file="human_pro.pdf")
par(pin=c(2,5))
par(mar=c(4,4,4,4))
boxplot(aa1[,1],aa2[,1],axes=FALSE,outline=FALSE,ylab="(A+T)%",cex=1.2,col=c(rgb(79,129,189,max=255),rgb(192,80,77,max=255),""),xlim=c(0,3),ylim=c(0.25,0.8),las=1, font.lab=1,main="",cex.lab = 1.2)
axis(2,lwd=0.8,las=1)
axis(1, lwd=0.8, at=c(1,2),labels = c("low 6mA density","high 6mA density"), font.lab=1,cex.lab = 1.2,cex=1.2)
box(lwd=0.5)
#legend("topleft",pch=c(15,15),col=c(rgb(192,80,77,max=255),rgb(79,129,189,max=255)),c("Protein coding sequences","Pseudogene sequences"))

0.001281877
0.0026
0.00064

















