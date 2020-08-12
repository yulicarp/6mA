#############
#lncRNA######
awk '{print $1"\t"$2"\t"$3"\t"$1"_"$2"_"$3"_"$4"_"$5}' lncRNA_ara.bed > lncRNA_standard.bed
bedtools getfasta -fi /home/data4/pacbio/arabidopsis/genome/TAIR10.1.fna -bed lncRNA_standard.bed -name -fo lncRNA.fa
awk 'BEGIN{OFS="\t"}{if(/^>/){gsub(">","",$0);split($0,A,"_");}else{sum=gsub(/[AaTt]/,"&",$0);print A[1]"_"A[2],A[3],A[4],A[1]"_"A[2]"_"A[3]"_"A[4]"_"A[5]"_"A[6]"_"sum}}' lncRNA.fa > lncRNA_A.bed
intersectBed -loj -a lncRNA_A.bed -b /home/data4/pacbio/arabidopsis/6ma_666/6ma_666cov25.bed | awk '{if($6<0){a[$4]=="0"}else{a[$4]+=1}}END{for(i in a)print i,a[i]}' | awk '{if($2==""){print $1,"0"}else{print $0}}' | awk '{split($1,A,"_");print A[6]"\t"A[5]"\t"A[1]"_"A[2]"\t"A[3]"\t"A[4]"\t"A[7]"\t"$2"\t"$2/A[7]}' > density/lncRNA_6ma_density
#intersect(用来做核对)
intersectBed -a lncRNA_ara.bed -b /home/data4/pacbio/arabidopsis/6ma_666/6ma_666cov25.bed -wa -wb > intersectbed/lncRNA_6ma_ara.bed
##############
#miRNA########
awk '{print $1"\t"$2"\t"$3"\t"$1"_"$2"_"$3"_"$4"_"$5}' miRNA_ara.bed > miRNA_standard.bed
bedtools getfasta -fi /home/data4/pacbio/arabidopsis/genome/TAIR10.1.fna -bed miRNA_standard.bed -name -fo miRNA.fa
awk 'BEGIN{OFS="\t"}{if(/^>/){gsub(">","",$0);split($0,A,"_");}else{sum=gsub(/[AaTt]/,"&",$0);print A[1]"_"A[2],A[3],A[4],A[1]"_"A[2]"_"A[3]"_"A[4]"_"A[5]"_"A[6]"_"sum}}' miRNA.fa > miRNA_A.bed
intersectBed -loj -a miRNA_A.bed -b /home/data4/pacbio/arabidopsis/6ma_666/6ma_666cov25.bed | awk '{if($6<0){a[$4]=="0"}else{a[$4]+=1}}END{for(i in a)print i,a[i]}' | awk '{if($2==""){print $1,"0"}else{print $0}}' | awk '{split($1,A,"_");print A[6]"\t"A[5]"\t"A[1]"_"A[2]"\t"A[3]"\t"A[4]"\t"A[7]"\t"$2"\t"$2/A[7]}' > density/miRNA_6ma_density
#intersect(用来做核对)
intersectBed -a miRNA_ara.bed -b /home/data4/pacbio/arabidopsis/6ma_666/6ma_666cov25.bed -wa -wb > intersectbed/miRNA_6ma_ara.bed
##############
#protein######
awk '{print $1"\t"$2"\t"$3"\t"$1"_"$2"_"$3"_"$4"_"$5}' protein_ara.bed > protein_standard.bed
bedtools getfasta -fi /home/data4/pacbio/arabidopsis/genome/TAIR10.1.fna -bed protein_standard.bed -name -fo protein.fa
awk 'BEGIN{OFS="\t"}{if(/^>/){gsub(">","",$0);split($0,A,"_");}else{sum=gsub(/[AaTt]/,"&",$0);print A[1]"_"A[2],A[3],A[4],A[1]"_"A[2]"_"A[3]"_"A[4]"_"A[5]"_"A[6]"_"sum}}' protein.fa > protein_A.bed
intersectBed -loj -a protein_A.bed -b /home/data4/pacbio/arabidopsis/6ma_666/6ma_666cov25.bed | awk '{if($6<0){a[$4]=="0"}else{a[$4]+=1}}END{for(i in a)print i,a[i]}' | awk '{if($2==""){print $1,"0"}else{print $0}}' | awk '{split($1,A,"_");print A[6]"\t"A[5]"\t"A[1]"_"A[2]"\t"A[3]"\t"A[4]"\t"A[7]"\t"$2"\t"$2/A[7]}' > density/protein_6ma_density
#intersect(用来做核对)
intersectBed -a protein_ara.bed -b /home/data4/pacbio/arabidopsis/6ma_666/6ma_666cov25.bed -wa -wb > intersectbed/protein_6ma_ara.bed
##############
#rRNA#########
awk '{print $1"\t"$2"\t"$3"\t"$1"_"$2"_"$3"_"$4"_"$5}' rRNA_ara.bed > rRNA_standard.bed
bedtools getfasta -fi /home/data4/pacbio/arabidopsis/genome/TAIR10.1.fna -bed rRNA_standard.bed -name -fo rRNA.fa
awk 'BEGIN{OFS="\t"}{if(/^>/){gsub(">","",$0);split($0,A,"_");}else{sum=gsub(/[AaTt]/,"&",$0);print A[1]"_"A[2],A[3],A[4],A[1]"_"A[2]"_"A[3]"_"A[4]"_"A[5]"_"A[6]"_"sum}}' rRNA.fa > rRNA_A.bed
intersectBed -loj -a rRNA_A.bed -b /home/data4/pacbio/arabidopsis/6ma_666/6ma_666cov25.bed | awk '{if($6<0){a[$4]=="0"}else{a[$4]+=1}}END{for(i in a)print i,a[i]}' | awk '{if($2==""){print $1,"0"}else{print $0}}' | awk '{split($1,A,"_");print A[6]"\t"A[5]"\t"A[1]"_"A[2]"\t"A[3]"\t"A[4]"\t"A[7]"\t"$2"\t"$2/A[7]}' > density/rRNA_6ma_density
#intersect(用来做核对)
intersectBed -a rRNA_ara.bed -b /home/data4/pacbio/arabidopsis/6ma_666/6ma_666cov25.bed -wa -wb > intersectbed/rRNA_6ma_ara.bed
##############
#snRNA########
awk '{print $1"\t"$2"\t"$3"\t"$1"_"$2"_"$3"_"$4"_"$5}' snRNA_ara.bed > snRNA_standard.bed
bedtools getfasta -fi /home/data4/pacbio/arabidopsis/genome/TAIR10.1.fna -bed snRNA_standard.bed -name -fo snRNA.fa
awk 'BEGIN{OFS="\t"}{if(/^>/){gsub(">","",$0);split($0,A,"_");}else{sum=gsub(/[AaTt]/,"&",$0);print A[1]"_"A[2],A[3],A[4],A[1]"_"A[2]"_"A[3]"_"A[4]"_"A[5]"_"A[6]"_"sum}}' snRNA.fa > snRNA_A.bed
intersectBed -loj -a snRNA_A.bed -b /home/data4/pacbio/arabidopsis/6ma_666/6ma_666cov25.bed | awk '{if($6<0){a[$4]=="0"}else{a[$4]+=1}}END{for(i in a)print i,a[i]}' | awk '{if($2==""){print $1,"0"}else{print $0}}' | awk '{split($1,A,"_");print A[6]"\t"A[5]"\t"A[1]"_"A[2]"\t"A[3]"\t"A[4]"\t"A[7]"\t"$2"\t"$2/A[7]}' > density/snRNA_6ma_density
#intersect(用来做核对)
intersectBed -a snRNA_ara.bed -b /home/data4/pacbio/arabidopsis/6ma_666/6ma_666cov25.bed -wa -wb > intersectbed/snRNA_6ma_ara.bed
##############
#tRNA#########
awk '{print $1"\t"$2"\t"$3"\t"$1"_"$2"_"$3"_"$4"_"$5}' tRNA_ara.bed > tRNA_standard.bed
bedtools getfasta -fi /home/data4/pacbio/arabidopsis/genome/TAIR10.1.fna -bed tRNA_standard.bed -name -fo tRNA.fa
awk 'BEGIN{OFS="\t"}{if(/^>/){gsub(">","",$0);split($0,A,"_");}else{sum=gsub(/[AaTt]/,"&",$0);print A[1]"_"A[2],A[3],A[4],A[1]"_"A[2]"_"A[3]"_"A[4]"_"A[5]"_"A[6]"_"sum}}' tRNA.fa > tRNA_A.bed
intersectBed -loj -a tRNA_A.bed -b /home/data4/pacbio/arabidopsis/6ma_666/6ma_666cov25.bed | awk '{if($6<0){a[$4]=="0"}else{a[$4]+=1}}END{for(i in a)print i,a[i]}' | awk '{if($2==""){print $1,"0"}else{print $0}}' | awk '{split($1,A,"_");print A[6]"\t"A[5]"\t"A[1]"_"A[2]"\t"A[3]"\t"A[4]"\t"A[7]"\t"$2"\t"$2/A[7]}' > density/tRNA_6ma_density
#intersect(用来做核对)
intersectBed -a tRNA_ara.bed -b /home/data4/pacbio/arabidopsis/6ma_666/6ma_666cov25.bed  -wa -wb > intersectbed/tRNA_6ma_ara.bed
##############
#gene#########
awk '{print $1"\t"$2"\t"$3"\t"$6"\t"$7}' ../../bed

awk '{print $1"\t"$2"\t"$3"\t"$1"_"$2"_"$3"_"$4"_"$5}' gene_ara.bed > gene_standard.bed
bedtools getfasta -fi /home/data4/pacbio/arabidopsis/genome/TAIR10.1.fna -bed gene_standard.bed -name -fo gene.fa
awk 'BEGIN{OFS="\t"}{if(/^>/){gsub(">","",$0);split($0,A,"_");}else{sum=gsub(/[AaTt]/,"&",$0);print A[1]"_"A[2],A[3],A[4],A[1]"_"A[2]"_"A[3]"_"A[4]"_"A[5]"_"A[6]"_"sum}}' gene.fa > gene_A.bed
intersectBed -loj -a gene_A.bed -b /home/data4/pacbio/arabidopsis/6ma_666/6ma_666cov25.bed | awk '{if($6<0){a[$4]=="0"}else{a[$4]+=1}}END{for(i in a)print i,a[i]}' | awk '{if($2==""){print $1,"0"}else{print $0}}' | awk '{split($1,A,"_");print A[6]"\t"A[5]"\t"A[1]"_"A[2]"\t"A[3]"\t"A[4]"\t"A[7]"\t"$2"\t"$2/A[7]}' > density/gene_6ma_density
#intersect(用来做核对)
intersectBed -a gene_ara.bed -b /home/data4/pacbio/arabidopsis/6ma_666/6ma_666cov25.bed  -wa -wb > intersectbed/gene_6ma_ara.bed







awk '!x[$2]' test > test2







