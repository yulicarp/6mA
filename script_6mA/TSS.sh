<ara> 
#define lncRNA region in the positive and negative chain
awk -F "\t" '{if($3=="mRNA")print $1"\t"$4-1"\t"$5}' GCF_000001735.4_TAIR10.1_genomic.gff  > pm/protein.bed
awk -F "\t" '{if($3=="lnc_RNA")print $1"\t"$4-1"\t"$5}' GCF_000001735.4_TAIR10.1_genomic.gff  > pm/lncRNA.bed
awk '{if($4=="+")print $1"\t"$2"\t"$3}' protein.bed > P_protein.bed
awk '{if($4=="-")print $1"\t"$2"\t"$3}' protein.bed > N_protein.bed
awk '{if($4=="+")print $1"\t"$2"\t"$3}' lncRNA.bed > P_lncRNA.bed
awk '{if($4=="-")print $1"\t"$2"\t"$3}' lncRNA.bed > N_lncRNA.bed
#make lncRNA and protein coding gene upstream and downstream bed file both in positon and negative.
awk 'BEGIN{OFS="\t"}{gsub("\+|\-","",$0);if($2-1000<0){m=0; n=$2+1000}else{m=$2-1000; n=$2+1000};print $1,m,n}' P_lncRNA.bed >P_lnc.bed
awk 'BEGIN{OFS="\t"}{gsub("\+|\-","",$0);if($3-1000<0){m=0; n=$3+1000}else{m=$3-1000; n=$3+1000};print $1,m,n}' N_lncRNA.bed >N_lnc.bed
awk 'BEGIN{OFS="\t"}{gsub("\+|\-","",$0);if($2-1000<0){m=0; n=$2+1000}else{m=$2-1000; n=$2+1000};print $1,m,n}' P_protein.bed >P_pro.bed
awk 'BEGIN{OFS="\t"}{gsub("\+|\-","",$0);if($3-1000<0){m=0; n=$3+1000}else{m=$3-1000; n=$3+1000};print $1,m,n}' N_protein.bed >N_pro.bed

awk 'BEGIN{OFS="\t"}{gsub("\+|\-","",$0);if($2-1000<0){m=0; n=$2+1000}else{m=$2-1000; n=$2+1000};print $1,m,n,$1"\:"$2"\-"$3 }' P_lncRNA.bed > genename_P_lncRNA.bed
awk 'BEGIN{OFS="\t"}{gsub("\+|\-","",$0);if($3-1000<0){m=0; n=$3+1000}else{m=$3-1000; n=$3+1000};print $1,m,n,$1"\:"$2"\-"$3 }' N_lncRNA.bed > genename_N_lncRNA.bed
awk 'BEGIN{OFS="\t"}{gsub("\+|\-","",$0);if($2-1000<0){m=0; n=$2+1000}else{m=$2-1000; n=$2+1000};print $1,m,n,$1"\:"$2"\-"$3 }' P_protein.bed > genename_P_protein.bed
awk 'BEGIN{OFS="\t"}{gsub("\+|\-","",$0);if($3-1000<0){m=0; n=$3+1000}else{m=$3-1000; n=$3+1000};print $1,m,n,$1"\:"$2"\-"$3 }' N_protein.bed > genename_N_protein.bed

#get the 6ma loci in lncRNA and protein coding gene respectively.
intersectBed -loj -a P_lnc.bed -b /home/data4/pacbio/arabidopsis/6ma_666/6ma.bed >P_lnc_6ma.txt 
intersectBed -loj -a N_lnc.bed -b /home/data4/pacbio/arabidopsis/6ma_666/6ma.bed >N_lnc_6ma.txt 
intersectBed -loj -a P_pro.bed -b /home/data4/pacbio/arabidopsis/6ma_666/6ma.bed >P_protein_6ma.txt 
intersectBed -loj -a N_pro.bed -b /home/data4/pacbio/arabidopsis/6ma_666/6ma.bed >N_protein_6ma.txt

intersectBed -loj -a genename_P_lncRNA.bed -b /home/data4/pacbio/arabidopsis/6ma_666/6ma.bed >P_lncRNA_gene.txt
intersectBed -loj -a genename_N_lncRNA.bed -b /home/data4/pacbio/arabidopsis/6ma_666/6ma.bed >N_lncRNA_gene.txt
intersectBed -loj -a genename_P_protein.bed -b /home/data4/pacbio/arabidopsis/6ma_666/6ma.bed >P_protein_gene.txt 
intersectBed -loj -a genename_N_protein.bed -b /home/data4/pacbio/arabidopsis/6ma_666/6ma.bed >N_protein_gene.txt

 
#get the related loci of 6mA in lncRNA and protein coding gene.
awk '{if($5>0){print $3-$5}}' P_lnc_6ma.txt >P_lncRNA_cgenenum.txt
awk '{if($5>0){print $3-$5}}' N_lnc_6ma.txt >N_lncRNA_cgenenum.txt
awk '{if($5>0){print $3-$5}}' P_protein_6ma.txt >P_protein_cgenenum.txt
awk '{if($5>0){print $3-$5}}' N_protein_6ma.txt >N_protein_cgenenum.txt

awk '{if($6>0){print $4,$3-$6}}' P_lncRNA_gene.txt >P_lncRNA_cgenenum.txt
awk '{if($6>0){print $4,$3-$6}}' N_lncRNA_gene.txt >N_lncRNA_cgenenum.txt
awk '{if($6>0){print $4,$3-$6}}' P_protein_gene.txt >P_protein_cgenenum.txt
awk '{if($6>0){print $4,$3-$6}}' N_protein_gene.txt >N_protein_cgenenum.txt

# statistics of 6ma num. per xxxbp window using python
python tss_gene.py
##output result files: P_lncRNA_gene; N_lncRNA_gene; P_protein_gene; N_protein_gene


awk -F ":" 'BEGIN{ RS=",";OFS="\t"  }{gsub("{|}| ","");print $1,$2}' P_lncRNA_gene > P_lnc_6ma_result
awk -F ":" 'BEGIN{ RS=",";OFS="\t"  }{gsub("{|}| ","");print $1,$2}' N_lncRNA_gene > N_lnc_6ma_result
awk -F ":" 'BEGIN{ RS=",";OFS="\t"  }{gsub("{|}| ","");print $1,$2}' P_protein_gene > P_protein_6ma_result
awk -F ":" 'BEGIN{ RS=",";OFS="\t"  }{gsub("{|}| ","");print $1,$2}' N_protein_gene > N_protein_6ma_result

<ele>
#define lncRNA region in the positive and negative chain
awk -F "\t" '{if($3=="mRNA")print $1"\t"$4-1"\t"$5"\t"$7}' /home/data4/pacbio/Caenorhabditis_elegans/genome/GCF_000002985.6_WBcel235_genomic.gff > protein.bed
awk -F "\t" '{if($3=="lnc_RNA")print $1"\t"$4-1"\t"$5"\t"$7}' /home/data4/pacbio/Caenorhabditis_elegans/genome/GCF_000002985.6_WBcel235_genomic.gff > lncRNA.bed
awk '{if($4=="+")print $1"\t"$2"\t"$3}' protein.bed > P_protein.bed
awk '{if($4=="-")print $1"\t"$2"\t"$3}' protein.bed > N_protein.bed
awk '{if($4=="+")print $1"\t"$2"\t"$3}' lncRNA.bed > P_lncRNA.bed
awk '{if($4=="-")print $1"\t"$2"\t"$3}' lncRNA.bed > N_lncRNA.bed
#make lncRNA and protein coding gene upstream and downstream bed file both in positon and negative.
awk 'BEGIN{OFS="\t"}{gsub("\+|\-","",$0);if($2-1000<0){m=0; n=$2+1000}else{m=$2-1000; n=$2+1000};print $1,m,n,$1"\:"$2"\-"$3 }' P_lncRNA.bed > genename_P_lncRNA.bed
awk 'BEGIN{OFS="\t"}{gsub("\+|\-","",$0);if($3-1000<0){m=0; n=$3+1000}else{m=$3-1000; n=$3+1000};print $1,m,n,$1"\:"$2"\-"$3 }' N_lncRNA.bed > genename_N_lncRNA.bed
awk 'BEGIN{OFS="\t"}{gsub("\+|\-","",$0);if($2-1000<0){m=0; n=$2+1000}else{m=$2-1000; n=$2+1000};print $1,m,n,$1"\:"$2"\-"$3 }' P_protein.bed > genename_P_protein.bed
awk 'BEGIN{OFS="\t"}{gsub("\+|\-","",$0);if($3-1000<0){m=0; n=$3+1000}else{m=$3-1000; n=$3+1000};print $1,m,n,$1"\:"$2"\-"$3 }' N_protein.bed > genename_N_protein.bed
#get the 6ma loci in lncRNA and protein coding gene respectively.
intersectBed -loj -a genename_P_lncRNA.bed -b /home/data4/pacbio/Caenorhabditis_elegans/6ma_cov/6ma.bed >P_lncRNA_gene.txt
intersectBed -loj -a genename_N_lncRNA.bed -b /home/data4/pacbio/Caenorhabditis_elegans/6ma_cov/6ma.bed >N_lncRNA_gene.txt
intersectBed -loj -a genename_P_protein.bed -b /home/data4/pacbio/Caenorhabditis_elegans/6ma_cov/6ma.bed >P_protein_gene.txt 
intersectBed -loj -a genename_N_protein.bed -b /home/data4/pacbio/Caenorhabditis_elegans/6ma_cov/6ma.bed >N_protein_gene.txt

#get the related loci of 6mA in lncRNA and protein coding gene.
awk '{if($6>0){print $4,$3-$6}}' P_lncRNA_gene.txt >P_lncRNA_cgenenum.txt
awk '{if($6>0){print $4,$3-$6}}' N_lncRNA_gene.txt >N_lncRNA_cgenenum.txt
awk '{if($6>0){print $4,$3-$6}}' P_protein_gene.txt >P_protein_cgenenum.txt
awk '{if($6>0){print $4,$3-$6}}' N_protein_gene.txt >N_protein_cgenenum.txt

# statistics of 6ma num. per xxxbp window using python
python tss_gene.py
awk -F ":" 'BEGIN{ RS=",";OFS="\t"  }{gsub("{|}| ","");print -$1+1000,$2}' P_lncRNA_gene > P_lnc_6ma_result
awk -F ":" 'BEGIN{ RS=",";OFS="\t"  }{gsub("{|}| ","");print $1-1000,$2}' N_lncRNA_gene > N_lnc_6ma_result
awk -F ":" 'BEGIN{ RS=",";OFS="\t"  }{gsub("{|}| ","");print -$1+1000,$2}' P_protein_gene > P_protein_6ma_result
awk -F ":" 'BEGIN{ RS=",";OFS="\t"  }{gsub("{|}| ","");print $1-1000,$2}' N_protein_gene > N_protein_6ma_result




awk 'BEGIN{OFS="\t"}{if($3-2000<0){m=0; n=$3+2000}else{m=$3-2000; n=$3+2000};print $1,m,n}' bed/lncRNA.bed > TSS/lnc.bed
awk 'BEGIN{OFS="\t"}{if($3-2000<0){m=0; n=$3+2000}else{m=$3-2000; n=$3+2000};print $1,m,n}' bed/protein.bed > TSS/pro.bed

intersectBed -loj -a TSS/lnc.bed -b 6ma.bed > TSS/lnc_6ma.txt
intersectBed -loj -a TSS/pro.bed -b 6ma.bed > TSS/pro_6ma.txt
awk '{if($5>0){print $3-$5}}' lnc_6ma.txt >lnc_loc.txt
awk '{if($5>0){print $3-$5}}' pro_6ma.txt >pro_loc.txt
python TSS_loc.py
awk -F ":"， 'BEGIN{ RS=",";OFS="\t"  }{gsub("{|}| ","");print $1,$2}' lnc_6ma > lnc_result
awk -F ":" 'BEGIN{ RS=",";OFS="\t"  }{gsub("{|}| ","");print $1,$2}' pro_6ma > pro_resultl


awk '/^NC/{if($3=="mRNA"){print}}' GCF_000001735.4_TAIR10.1_genomic.gff | awk '$7=="+"' | awk '{split($0,A,"gene_biotype=");split(A[2],B,";");split($9,C,"GeneID:");split(C[2],D,";");split($9,E,"Name=");split(E[2],F,";");if(B[1]=="lncRNA"){print $1"\t"$4-1"\t"$5}}' > P_protein.bed
GCF_000001735.4_TAIR10.1_genomic.gff

<fly>
#define lncRNA region in the positive and negative chain
awk -F "\t" '{if($3=="mRNA")print $1"\t"$4-1"\t"$5"\t"$7}' /home/data4/pacbio/Drosophila_melanogaster/genome/GCF_000001215.4_Release_6_plus_ISO1_MT_genomic.gff > protein.bed
awk -F "\t" '{if($3=="lnc_RNA")print $1"\t"$4-1"\t"$5"\t"$7}' /home/data4/pacbio/Drosophila_melanogaster/genome/GCF_000001215.4_Release_6_plus_ISO1_MT_genomic.gff > lncRNA.bed
awk '{if($4=="+")print $1"\t"$2"\t"$3}' protein.bed > P_protein.bed
awk '{if($4=="-")print $1"\t"$2"\t"$3}' protein.bed > N_protein.bed
awk '{if($4=="+")print $1"\t"$2"\t"$3}' lncRNA.bed > P_lncRNA.bed
awk '{if($4=="-")print $1"\t"$2"\t"$3}' lncRNA.bed > N_lncRNA.bed
#make lncRNA and protein coding gene upstream and downstream bed file both in positon and negative.
awk 'BEGIN{OFS="\t"}{gsub("\+|\-","",$0);if($2-1000<0){m=0; n=$2+1000}else{m=$2-1000; n=$2+1000};print $1,m,n,$1"\:"$2"\-"$3 }' P_lncRNA.bed > genename_P_lncRNA.bed
awk 'BEGIN{OFS="\t"}{gsub("\+|\-","",$0);if($3-1000<0){m=0; n=$3+1000}else{m=$3-1000; n=$3+1000};print $1,m,n,$1"\:"$2"\-"$3 }' N_lncRNA.bed > genename_N_lncRNA.bed
awk 'BEGIN{OFS="\t"}{gsub("\+|\-","",$0);if($2-1000<0){m=0; n=$2+1000}else{m=$2-1000; n=$2+1000};print $1,m,n,$1"\:"$2"\-"$3 }' P_protein.bed > genename_P_protein.bed
awk 'BEGIN{OFS="\t"}{gsub("\+|\-","",$0);if($3-1000<0){m=0; n=$3+1000}else{m=$3-1000; n=$3+1000};print $1,m,n,$1"\:"$2"\-"$3 }' N_protein.bed > genename_N_protein.bed
#get the 6ma loci in lncRNA and protein coding gene respectively.
intersectBed -loj -a genename_P_lncRNA.bed -b /home/data4/pacbio/Drosophila_melanogaster/6ma_cov/6ma.bed >P_lncRNA_gene.txt
intersectBed -loj -a genename_N_lncRNA.bed -b /home/data4/pacbio/Drosophila_melanogaster/6ma_cov/6ma.bed >N_lncRNA_gene.txt
intersectBed -loj -a genename_P_protein.bed -b /home/data4/pacbio/Drosophila_melanogaster/6ma_cov/6ma.bed >P_protein_gene.txt 
intersectBed -loj -a genename_N_protein.bed -b /home/data4/pacbio/Drosophila_melanogaster/6ma_cov/6ma.bed >N_protein_gene.txt

#get the related loci of 6mA in lncRNA and protein coding gene.
awk '{if($6>0){print $4,$3-$6}}' P_lncRNA_gene.txt >P_lncRNA_cgenenum.txt
awk '{if($6>0){print $4,$3-$6}}' N_lncRNA_gene.txt >N_lncRNA_cgenenum.txt
awk '{if($6>0){print $4,$3-$6}}' P_protein_gene.txt >P_protein_cgenenum.txt
awk '{if($6>0){print $4,$3-$6}}' N_protein_gene.txt >N_protein_cgenenum.txt

# statistics of 6ma num. per xxxbp window using python
python tss_gene.py
awk -F ":" 'BEGIN{ RS=",";OFS="\t"  }{gsub("{|}| ","");print -$1+1000,$2}' P_lncRNA_gene > P_lnc_6ma_result
awk -F ":" 'BEGIN{ RS=",";OFS="\t"  }{gsub("{|}| ","");print $1-1000,$2}' N_lncRNA_gene > N_lnc_6ma_result
awk -F ":" 'BEGIN{ RS=",";OFS="\t"  }{gsub("{|}| ","");print -$1+1000,$2}' P_protein_gene > P_protein_6ma_result
awk -F ":" 'BEGIN{ RS=",";OFS="\t"  }{gsub("{|}| ","");print $1-1000,$2}' N_protein_gene > N_protein_6ma_result

<homo>
#define lncRNA region in the positive and negative chain
awk -F "\t" '{if($3=="mRNA")print $1"\t"$4-1"\t"$5"\t"$7}' /home/data4/pacbio/homo/GCF_000001405.38_GRCh38.p12_genomic.gff > protein.bed
awk -F "\t" '{if($3=="lnc_RNA")print $1"\t"$4-1"\t"$5"\t"$7}' /home/data4/pacbio/homo/GCF_000001405.38_GRCh38.p12_genomic.gff > lncRNA.bed
awk '{if($4=="+")print $1"\t"$2"\t"$3}' protein.bed > P_protein.bed
awk '{if($4=="-")print $1"\t"$2"\t"$3}' protein.bed > N_protein.bed
awk '{if($4=="+")print $1"\t"$2"\t"$3}' lncRNA.bed > P_lncRNA.bed
awk '{if($4=="-")print $1"\t"$2"\t"$3}' lncRNA.bed > N_lncRNA.bed
#make lncRNA and protein coding gene upstream and downstream bed file both in positon and negative.
awk 'BEGIN{OFS="\t"}{gsub("\+|\-","",$0);if($2-1000<0){m=0; n=$2+1000}else{m=$2-1000; n=$2+1000};print $1,m,n,$1"\:"$2"\-"$3 }' P_lncRNA.bed > genename_P_lncRNA.bed
awk 'BEGIN{OFS="\t"}{gsub("\+|\-","",$0);if($3-1000<0){m=0; n=$3+1000}else{m=$3-1000; n=$3+1000};print $1,m,n,$1"\:"$2"\-"$3 }' N_lncRNA.bed > genename_N_lncRNA.bed
awk 'BEGIN{OFS="\t"}{gsub("\+|\-","",$0);if($2-1000<0){m=0; n=$2+1000}else{m=$2-1000; n=$2+1000};print $1,m,n,$1"\:"$2"\-"$3 }' P_protein.bed > genename_P_protein.bed
awk 'BEGIN{OFS="\t"}{gsub("\+|\-","",$0);if($3-1000<0){m=0; n=$3+1000}else{m=$3-1000; n=$3+1000};print $1,m,n,$1"\:"$2"\-"$3 }' N_protein.bed > genename_N_protein.bed
#get the 6ma loci in lncRNA and protein coding gene respectively.
intersectBed -loj -a genename_P_lncRNA.bed -b /home/data4/pacbio/homo/6ma/953/6ma.bed >P_lncRNA_gene.txt
intersectBed -loj -a genename_N_lncRNA.bed -b /home/data4/pacbio/homo/6ma/953/6ma.bed >N_lncRNA_gene.txt
intersectBed -loj -a genename_P_protein.bed -b /home/data4/pacbio/homo/6ma/953/6ma.bed >P_protein_gene.txt 
intersectBed -loj -a genename_N_protein.bed -b /home/data4/pacbio/homo/6ma/953/6ma.bed >N_protein_gene.txt

#get the related loci of 6mA in lncRNA and protein coding gene.
awk '{if($6>0){print $4,$3-$6}}' P_lncRNA_gene.txt >P_lncRNA_cgenenum.txt
awk '{if($6>0){print $4,$3-$6}}' N_lncRNA_gene.txt >N_lncRNA_cgenenum.txt
awk '{if($6>0){print $4,$3-$6}}' P_protein_gene.txt >P_protein_cgenenum.txt
awk '{if($6>0){print $4,$3-$6}}' N_protein_gene.txt >N_protein_cgenenum.txt

# statistics of 6ma num. per xxxbp window using python
python tss_gene.py
awk -F ":" 'BEGIN{ RS=",";OFS="\t"  }{gsub("{|}| ","");print -$1+1000,$2}' P_lncRNA_gene > P_lnc_6ma_result
awk -F ":" 'BEGIN{ RS=",";OFS="\t"  }{gsub("{|}| ","");print $1-1000,$2}' N_lncRNA_gene > N_lnc_6ma_result
awk -F ":" 'BEGIN{ RS=",";OFS="\t"  }{gsub("{|}| ","");print -$1+1000,$2}' P_protein_gene > P_protein_6ma_result
awk -F ":" 'BEGIN{ RS=",";OFS="\t"  }{gsub("{|}| ","");print $1-1000,$2}' N_protein_gene > N_protein_6ma_result















