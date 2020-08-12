#chr1 chr2 分开进行
awk '{gsub("chr1","NC_000001.11",$1);print $0}'
awk '{gsub("chr2","NC_000002.12",$1);print $0}'
awk '{gsub("chr3","NC_000003.12",$1);gsub("chr4","NC_000004.12",$1);gsub("chr5","NC_000005.10",$1);gsub("chr6","NC_000006.12",$1);gsub("chr7","NC_000007.14",$1);gsub("chr8","NC_000008.11",$1);gsub("chr9","NC_000009.12",$1);gsub("chr10","NC_000010.11",$1);gsub("chr11","NC_000011.10",$1);gsub("chr12","NC_000012.12",$1);gsub("chr13","NC_000013.11",$1);gsub("chr14","NC_000014.9",$1);gsub("chr15","NC_000015.10",$1);gsub("chr16","NC_000016.10",$1);gsub("chr17","NC_000017.11",$1);gsub("chr18","NC_000018.10",$1);gsub("chr19","NC_000019.10",$1);gsub("chr20","NC_000020.11",$1);gsub("chr21","NC_000021.9",$1);gsub("chr22","NC_000022.11",$1);gsub("chrX","NC_000023.11",$1);gsub("chrY","NC_000024.10",$1);gsub("chrM","NC_012920.1",$1);print $0}' 
/home/data4/pacbio/homo/6ma/953/6ma_953cov25.bed
# lncRNA
awk '{print $1"\t"$2"\t"$3"\t"$1"_"$2"_"$3"_"$4"_"$5}' lncRNA_homo.bed > lncRNA_standard.bed
bedtools getfasta -fi /home/data4/pacbio/homo/genome/GCF_000001405.38_GRCh38.p12_genomic.fna -bed lncRNA_standard.bed -name -fo lncRNA.fa
awk 'BEGIN{OFS="\t"}{if(/^>/){gsub(">","",$0);split($0,A,"_");}else{sum=gsub(/[AaTt]/,"&",$0);print A[1]"_"A[2],A[3],A[4],A[1]"_"A[2]"_"A[3]"_"A[4]"_"A[5]"_"A[6]"_"sum}}' lncRNA.fa > lncRNA_A.bed
intersectBed -loj -a lncRNA_A.bed -b /home/data4/pacbio/homo/6ma/953/6ma_953cov25.bed | awk '{if($6<0){a[$4]=="0"}else{a[$4]+=1}}END{for(i in a)print i,a[i]}' | awk '{if($2==""){print $1,"0"}else{print $0}}' | awk '{split($1,A,"_");print A[6]"\t"A[5]"\t"A[1]"_"A[2]"\t"A[3]"\t"A[4]"\t"A[7]"\t"$2"\t"$2/A[7]}' > density/lncRNA_6ma_density
#intersectBed
intersectBed -a lncRNA_homo.bed -b /home/data4/pacbio/homo/6ma/953/6ma_953cov25.bed -wa -wb > intersectbed/lncRNA_6ma_homo.bed

# miRNA
awk '{print $1"\t"$2"\t"$3"\t"$1"_"$2"_"$3"_"$4"_"$5}' miRNA_homo.bed > miRNA_standard.bed
bedtools getfasta -fi /home/data4/pacbio/homo/genome/GCF_000001405.38_GRCh38.p12_genomic.fna -bed miRNA_standard.bed -name -fo miRNA.fa
awk 'BEGIN{OFS="\t"}{if(/^>/){gsub(">","",$0);split($0,A,"_");}else{sum=gsub(/[AaTt]/,"&",$0);print A[1]"_"A[2],A[3],A[4],A[1]"_"A[2]"_"A[3]"_"A[4]"_"A[5]"_"A[6]"_"sum}}' miRNA.fa > miRNA_A.bed
intersectBed -loj -a miRNA_A.bed -b /home/data4/pacbio/homo/6ma/953/6ma_953cov25.bed | awk '{if($6<0){a[$4]=="0"}else{a[$4]+=1}}END{for(i in a)print i,a[i]}' | awk '{if($2==""){print $1,"0"}else{print $0}}' | awk '{split($1,A,"_");print A[6]"\t"A[5]"\t"A[1]"_"A[2]"\t"A[3]"\t"A[4]"\t"A[7]"\t"$2"\t"$2/A[7]}' > density/miRNA_6ma_density
#intersectBed
intersectBed -a miRNA_homo.bed -b /home/data4/pacbio/homo/6ma/953/6ma_953cov25.bed -wa -wb > intersectbed/miRNA_6ma_homo.bed

# rRNA
awk '{print $1"\t"$2"\t"$3"\t"$1"_"$2"_"$3"_"$4"_"$5}' rRNA_homo.bed > rRNA_standard.bed
bedtools getfasta -fi /home/data4/pacbio/homo/genome/GCF_000001405.38_GRCh38.p12_genomic.fna -bed rRNA_standard.bed -name -fo rRNA.fa
awk 'BEGIN{OFS="\t"}{if(/^>/){gsub(">","",$0);split($0,A,"_");}else{sum=gsub(/[AaTt]/,"&",$0);print A[1]"_"A[2],A[3],A[4],A[1]"_"A[2]"_"A[3]"_"A[4]"_"A[5]"_"A[6]"_"sum}}' rRNA.fa > rRNA_A.bed
intersectBed -loj -a rRNA_A.bed -b /home/data4/pacbio/homo/6ma/953/6ma_953cov25.bed | awk '{if($6<0){a[$4]=="0"}else{a[$4]+=1}}END{for(i in a)print i,a[i]}' | awk '{if($2==""){print $1,"0"}else{print $0}}' | awk '{split($1,A,"_");print A[6]"\t"A[5]"\t"A[1]"_"A[2]"\t"A[3]"\t"A[4]"\t"A[7]"\t"$2"\t"$2/A[7]}' > density/rRNA_6ma_density
#intersectBed
intersectBed -a rRNA_homo.bed -b /home/data4/pacbio/homo/6ma/953/6ma_953cov25.bed -wa -wb > intersectbed/rRNA_6ma_homo.bed

#snRNA
awk '{print $1"\t"$2"\t"$3"\t"$1"_"$2"_"$3"_"$4"_"$5}' snRNA_homo.bed > snRNA_standard.bed
bedtools getfasta -fi /home/data4/pacbio/homo/genome/GCF_000001405.38_GRCh38.p12_genomic.fna -bed snRNA_standard.bed -name -fo snRNA.fa
awk 'BEGIN{OFS="\t"}{if(/^>/){gsub(">","",$0);split($0,A,"_");}else{sum=gsub(/[AaTt]/,"&",$0);print A[1]"_"A[2],A[3],A[4],A[1]"_"A[2]"_"A[3]"_"A[4]"_"A[5]"_"A[6]"_"sum}}' snRNA.fa > snRNA_A.bed
intersectBed -loj -a snRNA_A.bed -b /home/data4/pacbio/homo/6ma/953/6ma_953cov25.bed | awk '{if($6<0){a[$4]=="0"}else{a[$4]+=1}}END{for(i in a)print i,a[i]}' | awk '{if($2==""){print $1,"0"}else{print $0}}' | awk '{split($1,A,"_");print A[6]"\t"A[5]"\t"A[1]"_"A[2]"\t"A[3]"\t"A[4]"\t"A[7]"\t"$2"\t"$2/A[7]}' > density/snRNA_6ma_density
#intersectBed
intersectBed -a snRNA_homo.bed -b /home/data4/pacbio/homo/6ma/953/6ma_953cov25.bed -wa -wb > intersectbed/snRNA_6ma_homo.bed

#tRNA
awk '{print $1"\t"$2"\t"$3"\t"$1"_"$2"_"$3"_"$4"_"$5}' tRNA_homo.bed > tRNA_standard.bed
bedtools getfasta -fi /home/data4/pacbio/homo/genome/GCF_000001405.38_GRCh38.p12_genomic.fna -bed tRNA_standard.bed -name -fo tRNA.fa
awk 'BEGIN{OFS="\t"}{if(/^>/){gsub(">","",$0);split($0,A,"_");}else{sum=gsub(/[AaTt]/,"&",$0);print A[1]"_"A[2],A[3],A[4],A[1]"_"A[2]"_"A[3]"_"A[4]"_"A[5]"_"A[6]"_"sum}}' tRNA.fa > tRNA_A.bed
intersectBed -loj -a tRNA_A.bed -b /home/data4/pacbio/homo/6ma/953/6ma_953cov25.bed | awk '{if($6<0){a[$4]=="0"}else{a[$4]+=1}}END{for(i in a)print i,a[i]}' | awk '{if($2==""){print $1,"0"}else{print $0}}' | awk '{split($1,A,"_");print A[6]"\t"A[5]"\t"A[1]"_"A[2]"\t"A[3]"\t"A[4]"\t"A[7]"\t"$2"\t"$2/A[7]}' > density/tRNA_6ma_density
#intersectBed
intersectBed -a tRNA_homo.bed -b /home/data4/pacbio/homo/6ma/953/6ma_953cov25.bed -wa -wb > intersectbed/tRNA_6ma_homo.bed

#protein
awk '{print $1"\t"$2"\t"$3"\t"$1"_"$2"_"$3"_"$4"_"$5}' protein_homo.bed > protein_standard.bed
bedtools getfasta -fi /home/data4/pacbio/homo/genome/GCF_000001405.38_GRCh38.p12_genomic.fna -bed protein_standard.bed -name -fo protein.fa
awk 'BEGIN{OFS="\t"}{if(/^>/){gsub(">","",$0);split($0,A,"_");}else{sum=gsub(/[AaTt]/,"&",$0);print A[1]"_"A[2],A[3],A[4],A[1]"_"A[2]"_"A[3]"_"A[4]"_"A[5]"_"A[6]"_"sum}}' protein.fa > protein_A.bed
intersectBed -loj -a protein_A.bed -b /home/data4/pacbio/homo/6ma/953/6ma_953cov25.bed | awk '{if($6<0){a[$4]=="0"}else{a[$4]+=1}}END{for(i in a)print i,a[i]}' | awk '{if($2==""){print $1,"0"}else{print $0}}' | awk '{split($1,A,"_");print A[6]"\t"A[5]"\t"A[1]"_"A[2]"\t"A[3]"\t"A[4]"\t"A[7]"\t"$2"\t"$2/A[7]}' > density/protein_6ma_density
#intersectBed
intersectBed -a protein_homo.bed -b /home/data4/pacbio/homo/6ma/953/6ma_953cov25.bed -wa -wb > intersectbed/protein_6ma_homo.bed

#gene
awk '{print $1"\t"$2"\t"$3"\t"$6"\t"$7}' ../../bed
awk '{print $1"\t"$2"\t"$3"\t"$1"_"$2"_"$3"_"$4"_"$5}' gene_homo.bed > gene_standard.bed
bedtools getfasta -fi /home/data4/pacbio/homo/genome/GCF_000001405.38_GRCh38.p12_genomic.fna -bed gene_standard.bed -name -fo gene.fa
awk 'BEGIN{OFS="\t"}{if(/^>/){gsub(">","",$0);split($0,A,"_");}else{sum=gsub(/[AaTt]/,"&",$0);print A[1]"_"A[2],A[3],A[4],A[1]"_"A[2]"_"A[3]"_"A[4]"_"A[5]"_"A[6]"_"sum}}' gene.fa > gene_A.bed
intersectBed -loj -a gene_A.bed -b /home/data4/pacbio/homo/6ma/953/6ma_953cov25.bed | awk '{if($6<0){a[$4]=="0"}else{a[$4]+=1}}END{for(i in a)print i,a[i]}' | awk '{if($2==""){print $1,"0"}else{print $0}}' | awk '{split($1,A,"_");print A[6]"\t"A[5]"\t"A[1]"_"A[2]"\t"A[3]"\t"A[4]"\t"A[7]"\t"$2"\t"$2/A[7]}' > density/gene_6ma_density

intersectBed -a gene_homo.bed -b /home/data4/pacbio/homo/6ma/953/6ma_953cov25.bed -wa -wb > intersectbed/gene_6ma_homo.bed










