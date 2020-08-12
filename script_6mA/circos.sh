
#elegans
awk '{split($0,A,"frac=");split(A[2],B,";");print $1"\t"$8"\t"$9"\t"B[1]}' chr.gff > frac.bed
sort -k4 frac.bed > circos_ele/frac.sort.bed
awk '{if($4 <= 0.3) print $0}' frac.sort.bed > low_frac.bed
awk '{if($4 >= 0.3 && $4 <= 0.7) print $0}' frac.sort.bed > middle_frac.bed
awk '{if($4 >= 0.7 && $4 <= 1) print $0}' frac.sort.bed > high_frac.bed
intersectBed -loj -a /home/data4/pacbio/Caenorhabditis_elegans/6ma_cov/rna_6ma/gene/gene_A.bed -b low_frac.bed | awk '{if($6<0){a[$4]=="0"}else{a[$4]+=1}}END{for(i in a)print i,a[i]}' | awk '{if($2==""){print $1,"0"}else{print $0}}' | awk '{split($1,A,"_");print A[6]"\t"A[5]"\t"A[1]"_"A[2]"\t"A[3]"\t"A[4]"\t"A[7]"\t"$2"\t"$2/A[7]}' > low_frac_density
intersectBed -loj -a /home/data4/pacbio/Caenorhabditis_elegans/6ma_cov/rna_6ma/gene/gene_A.bed -b middle_frac.bed | awk '{if($6<0){a[$4]=="0"}else{a[$4]+=1}}END{for(i in a)print i,a[i]}' | awk '{if($2==""){print $1,"0"}else{print $0}}' | awk '{split($1,A,"_");print A[6]"\t"A[5]"\t"A[1]"_"A[2]"\t"A[3]"\t"A[4]"\t"A[7]"\t"$2"\t"$2/A[7]}' > middle_frac_density
intersectBed -loj -a /home/data4/pacbio/Caenorhabditis_elegans/6ma_cov/rna_6ma/gene/gene_A.bed -b high_frac.bed | awk '{if($6<0){a[$4]=="0"}else{a[$4]+=1}}END{for(i in a)print i,a[i]}' | awk '{if($2==""){print $1,"0"}else{print $0}}' | awk '{split($1,A,"_");print A[6]"\t"A[5]"\t"A[1]"_"A[2]"\t"A[3]"\t"A[4]"\t"A[7]"\t"$2"\t"$2/A[7]}' > high_frac_density

/public/softwave/circos-0.69-6/bin/circos -conf circos.conf

# fruitfly
awk '{split($0,A,"frac=");split(A[2],B,";");print $1"\t"$8"\t"$9"\t"B[1]}' chr.gff > frac_chr.bed
awk '{split($0,A,"frac=");split(A[2],B,";");print $1"\t"$9"\t"$10"\t"B[1]}' mt.gff > frac_mt.bed
cat frac_chr.bed frac_mt.bed > frac.bed
awk '{if($4 <= 0.3) print $0}' frac.sort.bed > low_frac.bed
awk '{if($4 >= 0.3 && $4 <= 0.7) print $0}' frac.sort.bed > middle_frac.bed
awk '{if($4 >= 0.7 && $4 <= 1) print $0}' frac.sort.bed > high_frac.bed
intersectBed -loj -a /home/data4/pacbio/Drosophila_melanogaster/6ma_cov/rna_6ma/gene/gene_A.bed -b low_frac.bed | awk '{if($6<0){a[$4]=="0"}else{a[$4]+=1}}END{for(i in a)print i,a[i]}' | awk '{if($2==""){print $1,"0"}else{print $0}}' | awk '{split($1,A,"_");print A[6]"\t"A[5]"\t"A[1]"_"A[2]"\t"A[3]"\t"A[4]"\t"A[7]"\t"$2"\t"$2/A[7]}' > low_frac_density
intersectBed -loj -a /home/data4/pacbio/Drosophila_melanogaster/6ma_cov/rna_6ma/gene/gene_A.bed -b middle_frac.bed | awk '{if($6<0){a[$4]=="0"}else{a[$4]+=1}}END{for(i in a)print i,a[i]}' | awk '{if($2==""){print $1,"0"}else{print $0}}' | awk '{split($1,A,"_");print A[6]"\t"A[5]"\t"A[1]"_"A[2]"\t"A[3]"\t"A[4]"\t"A[7]"\t"$2"\t"$2/A[7]}' > middle_frac_density
intersectBed -loj -a /home/data4/pacbio/Drosophila_melanogaster/6ma_cov/rna_6ma/gene/gene_A.bed -b high_frac.bed | awk '{if($6<0){a[$4]=="0"}else{a[$4]+=1}}END{for(i in a)print i,a[i]}' | awk '{if($2==""){print $1,"0"}else{print $0}}' | awk '{split($1,A,"_");print A[6]"\t"A[5]"\t"A[1]"_"A[2]"\t"A[3]"\t"A[4]"\t"A[7]"\t"$2"\t"$2/A[7]}' > high_frac_density

# human
awk '{split($0,A,"frac=");split(A[2],B,";");print $1"\t"$5"\t"$6"\t"B[1]}' 6ma_953cov25_NC.gff > frac.bed
sort -k4 frac.bed > circos/frac.sort.bed
awk '{if($4 <= 0.3) print $0}' frac.sort.bed > low_frac.bed
awk '{if($4 >= 0.3 && $4 <= 0.7) print $0}' frac.sort.bed > middle_frac.bed
awk '{if($4 >= 0.7 && $4 <= 1) print $0}' frac.sort.bed > high_frac.bed
intersectBed -loj -a /home/data4/pacbio/homo/6ma/953/rna_6ma/gene/gene_A.bed -b low_frac.bed | awk '{if($6<0){a[$4]=="0"}else{a[$4]+=1}}END{for(i in a)print i,a[i]}' | awk '{if($2==""){print $1,"0"}else{print $0}}' | awk '{split($1,A,"_");print A[6]"\t"A[5]"\t"A[1]"_"A[2]"\t"A[3]"\t"A[4]"\t"A[7]"\t"$2"\t"$2/A[7]}' > low_frac_density
intersectBed -loj -a /home/data4/pacbio/homo/6ma/953/rna_6ma/gene/gene_A.bed -b middle_frac.bed | awk '{if($6<0){a[$4]=="0"}else{a[$4]+=1}}END{for(i in a)print i,a[i]}' | awk '{if($2==""){print $1,"0"}else{print $0}}' | awk '{split($1,A,"_");print A[6]"\t"A[5]"\t"A[1]"_"A[2]"\t"A[3]"\t"A[4]"\t"A[7]"\t"$2"\t"$2/A[7]}' > middle_frac_density
intersectBed -loj -a /home/data4/pacbio/homo/6ma/953/rna_6ma/gene/gene_A.bed -b high_frac.bed | awk '{if($6<0){a[$4]=="0"}else{a[$4]+=1}}END{for(i in a)print i,a[i]}' | awk '{if($2==""){print $1,"0"}else{print $0}}' | awk '{split($1,A,"_");print A[6]"\t"A[5]"\t"A[1]"_"A[2]"\t"A[3]"\t"A[4]"\t"A[7]"\t"$2"\t"$2/A[7]}' > high_frac_density
awk -F "\t" '{print $3"\t"$4"\t"$5"\t"$8}' high_frac_density > density/high_frac_density

#ara
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' /home/data4/pacbio/arabidopsis/genome/TAIR10.1.fna | awk 'NR>1{print}' | awk -v len=20000 'BEGIN{OFS="\t"}{if(/^>/){head=$1}else{l=length($0)/len+1;for(i=1;i<=l;i++){tmp=substr($0,(i-1)*len+1,len);sum=gsub(/[AaTtCcGgNn]/,"&",tmp);sum_b=gsub(/[AaTt]/,"&",tmp);if(i-1==0){start=(i-1)*len}else{start=(i-1)*len+1};print head,start,i*len,sum,sum_b}}}' | awk '{gsub(">","");print}' | sort -k1,1 -k2nr,2 | awk '{if($4<20000){print $1"\t"$2"\t"$2+$4-1"\t"$5}else{print $1"\t"$2"\t"$3"\t"$5}}' > ara_chr.bed
awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$1"-"$2"-"$3"-"$4}' ara_chr.bed > genome_20000.bed
awk '{split($0,A,"frac=");split(A[2],B,";");if(B[1] <= 0.3) print $0}' 6ma_953cov25_NC.gff > low_frac.txt
awk '{split($0,A,"frac=");split(A[2],B,";");if(B[1] >= 0.3 && B[1] <= 0.7) print $0}' 6ma_953cov25_NC.gff > middle_frac.txt
awk '{split($0,A,"frac=");split(A[2],B,";");if(B[1] >= 0.7 && B[1] <= 1) print $0}' 6ma_953cov25_NC.gff > high_frac.txt

intersectBed -loj -a genome_20000.bed -b low_frac.bed | awk '{if($7<0){a[$5]+=0}else{a[$5]+=1}}END{for(i in a)print i"-"a[i]}' | awk '{split($0,A,"-"); print A[1]"\t"A[2]"\t"A[3]"\t"A[5]/A[4] }' > low_frac_density











################################# ara
awk -F "\t" 'OFS="\t"{split($0,A,"frac="); split(A[2],B,";");split($1,C," ");if(B[1]>=0 && B[1]<=0.3 ) print C[1],$4-1,$5,$9}' 6ma_666cov25.gff > circos/low_frac.bed
awk -F "\t" 'OFS="\t"{split($0,A,"frac="); split(A[2],B,";");split($1,C," ");if(B[1]>=0.3 && B[1]<=0.7 ) print C[1],$4-1,$5,$9}' 6ma_666cov25.gff > circos/middle_frac.bed
awk -F "\t" 'OFS="\t"{split($0,A,"frac="); split(A[2],B,";");split($1,C," ");if(B[1]>=0.7 && B[1]<=1 ) print C[1],$4-1,$5,$9}' 6ma_666cov25.gff > circos/high_frac.bed
#
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' /home/data4/pacbio/arabidopsis/genome/TAIR10.1.fna | awk 'NR>1{print}' | awk -v len=50000 'BEGIN{OFS="\t"}{if(/^>/){head=$1}else{l=length($0)/len+1;for(i=1;i<=l;i++){tmp=substr($0,(i-1)*len+1,len);sum=gsub(/[AaTtCcGgNn]/,"&",tmp);sum_b=gsub(/[AaTt]/,"&",tmp);if(i-1==0){start=(i-1)*len}else{start=(i-1)*len+1};print head,start,i*len,sum,sum_b}}}' | awk '{gsub(">","");print}' | sort -k1,1 -k2nr,2 | awk '{if($4<50000){print $1"\t"$2"\t"$2+$4-1"\t"$5}else{print $1"\t"$2"\t"$3"\t"$5}}' > circos/len_50000.bed
awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$1"-"$2"-"$3"-"$4}' len_50000.bed > genome_50000.bed
#每2000bp 6ma density
intersectBed -loj -a genome_20000.bed -b low_frac.bed | awk '{if($7<0){a[$5]+=0}else{a[$5]+=1}}END{for(i in a)print i"-"a[i]}' | awk '{split($0,A,"-"); if(A[4]==0){print A[1]"\t"A[2]"\t"A[3]"\t""0"}else{print A[1]"\t"A[2]"\t"A[3]"\t"A[5]/A[4] }}' > frac_density/low_frac_density
intersectBed -loj -a genome_20000.bed -b middle_frac.bed | awk '{if($7<0){a[$5]+=0}else{a[$5]+=1}}END{for(i in a)print i"-"a[i]}' | awk '{split($0,A,"-"); if(A[4]==0){print A[1]"\t"A[2]"\t"A[3]"\t""0"}else{print A[1]"\t"A[2]"\t"A[3]"\t"A[5]/A[4] }}' > frac_density/middle_frac_density
intersectBed -loj -a genome_20000.bed -b high_frac.bed | awk '{if($7<0){a[$5]+=0}else{a[$5]+=1}}END{for(i in a)print i"-"a[i]}' | awk '{split($0,A,"-"); if(A[4]==0){print A[1]"\t"A[2]"\t"A[3]"\t""0"}else{print A[1]"\t"A[2]"\t"A[3]"\t"A[5]/A[4] }}' > frac_density/high_frac_density
#
intersectBed -loj -a genome_50000.bed -b high_frac.bed | awk '{if($7<0){a[$5]+=0}else{a[$5]+=1}}END{for(i in a)print i"-"a[i]}' | awk '{split($0,A,"-"); print A[1]"\t"A[2]"\t"A[3]"\t"$0 }' > f100_1.bed
intersectBed -loj -a f100_1.bed -b middle_frac.bed  | awk '{if($6<0){a[$4]+=0}else{a[$4]+=1}}END{for(i in a)print i"-"a[i]}' | awk '{split($0,A,"-"); print A[1]"\t"A[2]"\t"A[3]"\t"$0 }' > f100_2.bed
intersectBed -loj -a f100_2.bed -b low_frac.bed | awk '{if($6<0){a[$4]+=0}else{a[$4]+=1}}END{for(i in a)print i"-"a[i]}' | awk '{split($0,A,"-"); if(A[4]==0){print A[1]"\t"A[2]"\t"A[3]"\t""0""\t""0""\t""0""\t""0"}else{print A[1]"\t"A[2]"\t"A[3]"\t"A[5]/A[4]"\t"A[6]/A[4]"\t"A[7]/A[4]"\t"A[8]/A[4]}}' | awk '{if($4+$5+$6+$7==0){print $1"\t"$2"\t"$3"\t""0""\t""0""\t""0""\t""0"}else{print $1"\t"$2"\t"$3"\t"$4/($4+$5+$6+$7)"\t"$5/($4+$5+$6+$7)"\t"$6/($4+$5+$6+$7)"\t"$7/($4+$5+$6+$7)}}' > percentage.bed
#
awk '{print $1"\t"$2"\t"$3"\t"$4}' percentage.bed > ara_percentage/low_frac_density
awk '{print $1"\t"$2"\t"$3"\t"$5}' percentage.bed > ara_percentage/middle_frac_density
awk '{print $1"\t"$2"\t"$3"\t"$6}' percentage.bed > ara_percentage/high_frac_density

################################# elegans
awk -F "\t" 'OFS="\t"{split($0,A,"frac="); split(A[2],B,";");split($1,C," ");if(B[1]>=0 && B[1]<=0.3 ) print C[1],$4-1,$5,$9}' 6ma_elecov25.gff > circos_ele/low_frac.bed
awk -F "\t" 'OFS="\t"{split($0,A,"frac="); split(A[2],B,";");split($1,C," ");if(B[1]>=0.3 && B[1]<=0.7 ) print C[1],$4-1,$5,$9}' 6ma_elecov25.gff > circos_ele/middle_frac.bed
awk -F "\t" 'OFS="\t"{split($0,A,"frac="); split(A[2],B,";");split($1,C," ");if(B[1]>=0.7 && B[1]<=1 ) print C[1],$4-1,$5,$9}' 6ma_elecov25.gff > circos_ele/high_frac.bed
#
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' /home/data4/pacbio/Caenorhabditis_elegans/genome/c_elegans.fna | awk 'NR>1{print}' | awk -v len=50000 'BEGIN{OFS="\t"}{if(/^>/){head=$1}else{l=length($0)/len+1;for(i=1;i<=l;i++){tmp=substr($0,(i-1)*len+1,len);sum=gsub(/[AaTtCcGgNn]/,"&",tmp);sum_b=gsub(/[AaTt]/,"&",tmp);if(i-1==0){start=(i-1)*len}else{start=(i-1)*len+1};print head,start,i*len,sum,sum_b}}}' | awk '{gsub(">","");print}' | sort -k1,1 -k2nr,2 | awk '{if($4<50000){print $1"\t"$2"\t"$2+$4-1"\t"$5}else{print $1"\t"$2"\t"$3"\t"$5}}' > circos_ele/len_50000.bed
cd circos_ele/
awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$1"-"$2"-"$3"-"$4}' len_50000.bed > genome_50000.bed
#
intersectBed -loj -a genome_50000.bed -b high_frac.bed | awk '{if($7<0){a[$5]+=0}else{a[$5]+=1}}END{for(i in a)print i"-"a[i]}' | awk '{split($0,A,"-"); print A[1]"\t"A[2]"\t"A[3]"\t"$0 }' > f100_1.bed
intersectBed -loj -a f100_1.bed -b middle_frac.bed  | awk '{if($6<0){a[$4]+=0}else{a[$4]+=1}}END{for(i in a)print i"-"a[i]}' | awk '{split($0,A,"-"); print A[1]"\t"A[2]"\t"A[3]"\t"$0 }' > f100_2.bed
intersectBed -loj -a f100_2.bed -b low_frac.bed | awk '{if($6<0){a[$4]+=0}else{a[$4]+=1}}END{for(i in a)print i"-"a[i]}' | awk '{split($0,A,"-"); if(A[4]==0){print A[1]"\t"A[2]"\t"A[3]"\t""0""\t""0""\t""0""\t""0"}else{print A[1]"\t"A[2]"\t"A[3]"\t"A[5]/A[4]"\t"A[6]/A[4]"\t"A[7]/A[4]"\t"A[8]/A[4]}}' | awk '{if($4+$5+$6+$7==0){print $1"\t"$2"\t"$3"\t""0""\t""0""\t""0""\t""0"}else{print $1"\t"$2"\t"$3"\t"$4/($4+$5+$6+$7)"\t"$5/($4+$5+$6+$7)"\t"$6/($4+$5+$6+$7)"\t"$7/($4+$5+$6+$7)}}' > percentage.bed
#
mkdir ele_precentage
awk '{print $1"\t"$2"\t"$3"\t"$4}' percentage.bed > ele_precentage/low_frac_density
awk '{print $1"\t"$2"\t"$3"\t"$5}' percentage.bed > ele_precentage/middle_frac_density
awk '{print $1"\t"$2"\t"$3"\t"$6}' percentage.bed > ele_precentage/high_frac_density

###############################fly
awk -F "\t" 'OFS="\t"{split($0,A,"frac="); split(A[2],B,";");split($1,C," ");if(B[1]>=0 && B[1]<=0.3 ) print C[1],$4-1,$5,$9}' 6ma.gff > circos/low_frac.bed
awk -F "\t" 'OFS="\t"{split($0,A,"frac="); split(A[2],B,";");split($1,C," ");if(B[1]>=0.3 && B[1]<=0.7 ) print C[1],$4-1,$5,$9}' 6ma.gff > circos/middle_frac.bed
awk -F "\t" 'OFS="\t"{split($0,A,"frac="); split(A[2],B,";");split($1,C," ");if(B[1]>=0.7 && B[1]<=1 ) print C[1],$4-1,$5,$9}' 6ma.gff > circos/high_frac.bed
#
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' /home/data4/pacbio/Drosophila_melanogaster/genome/D_melanogaster.fna | awk 'NR>1{print}' | awk -v len=10000 'BEGIN{OFS="\t"}{if(/^>/){head=$1}else{l=length($0)/len+1;for(i=1;i<=l;i++){tmp=substr($0,(i-1)*len+1,len);sum=gsub(/[AaTtCcGgNn]/,"&",tmp);sum_b=gsub(/[AaTt]/,"&",tmp);if(i-1==0){start=(i-1)*len}else{start=(i-1)*len+1};print head,start,i*len,sum,sum_b}}}' | awk '{gsub(">","");print}' | sort -k1,1 -k2nr,2 | awk '{if($4<50000){print $1"\t"$2"\t"$2+$4-1"\t"$5}else{print $1"\t"$2"\t"$3"\t"$5}}' > circos/len_10000.bed
cd circos/
awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$1"-"$2"-"$3"-"$4}' len_10000.bed > genome_10000.bed
#
intersectBed -loj -a genome_50000.bed -b high_frac.bed | awk '{if($7<0){a[$5]+=0}else{a[$5]+=1}}END{for(i in a)print i"-"a[i]}' | awk '{split($0,A,"-"); print A[1]"\t"A[2]"\t"A[3]"\t"$0 }' > f100_1.bed
intersectBed -loj -a f100_1.bed -b middle_frac.bed  | awk '{if($6<0){a[$4]+=0}else{a[$4]+=1}}END{for(i in a)print i"-"a[i]}' | awk '{split($0,A,"-"); print A[1]"\t"A[2]"\t"A[3]"\t"$0 }' > f100_2.bed
intersectBed -loj -a f100_2.bed -b low_frac.bed | awk '{if($6<0){a[$4]+=0}else{a[$4]+=1}}END{for(i in a)print i"-"a[i]}' | awk '{split($0,A,"-"); if(A[4]==0){print A[1]"\t"A[2]"\t"A[3]"\t""0""\t""0""\t""0""\t""0"}else{print A[1]"\t"A[2]"\t"A[3]"\t"A[5]/A[4]"\t"A[6]/A[4]"\t"A[7]/A[4]"\t"A[8]/A[4]}}' | awk '{if($4+$5+$6+$7==0){print $1"\t"$2"\t"$3"\t""0""\t""0""\t""0""\t""0"}else{print $1"\t"$2"\t"$3"\t"$4/($4+$5+$6+$7)"\t"$5/($4+$5+$6+$7)"\t"$6/($4+$5+$6+$7)"\t"$7/($4+$5+$6+$7)}}' > percentage.bed
#
mkdir fly_precentage
awk '{print $1"\t"$2"\t"$3"\t"$4}' percentage.bed > fly_precentage/low_frac_density
awk '{print $1"\t"$2"\t"$3"\t"$5}' percentage.bed > fly_precentage/middle_frac_density
awk '{print $1"\t"$2"\t"$3"\t"$6}' percentage.bed > fly_precentage/high_frac_density

###############################homo
awk -F "\t" 'OFS="\t"{split($0,A,"frac="); split(A[2],B,";");split($1,C," ");if(B[1]>=0 && B[1]<=0.3 ) print C[1],$4-1,$5,$9}' 6ma_953cov25_NC.gff > circos/low_frac.bed
awk -F "\t" 'OFS="\t"{split($0,A,"frac="); split(A[2],B,";");split($1,C," ");if(B[1]>=0.3 && B[1]<=0.7 ) print C[1],$4-1,$5,$9}' 6ma_953cov25_NC.gff > circos/middle_frac.bed
awk -F "\t" 'OFS="\t"{split($0,A,"frac="); split(A[2],B,";");split($1,C," ");if(B[1]>=0.7 && B[1]<=1 ) print C[1],$4-1,$5,$9}' 6ma_953cov25_NC.gff > circos/high_frac.bed
awk 'OFS="\t"{split($0,A,"frac="); split(A[2],B,";");split($1,C," ");if(B[1]>=0 && B[1]<=0.3 ) print C[1],$4-1,$5,$9}' 6ma_953cov25_NC.gff > circos/low_frac.bed
awk 'OFS="\t"{split($0,A,"frac="); split(A[2],B,";");split($1,C," ");if(B[1]>=0.3 && B[1]<=0.7 ) print C[1],$4-1,$5,$9}' 6ma_953cov25_NC.gff > circos/middle_frac.bed
awk 'OFS="\t"{split($0,A,"frac="); split(A[2],B,";");split($1,C," ");if(B[1]>=0.7 && B[1]<=1 ) print C[1],$4-1,$5,$9}' 6ma_953cov25_NC.gff > circos/high_frac.bed

#
awk '/^>/ {printf("\n%s\n",$0);next; } { printf("%s",$0);}  END {printf("\n");}' /home/data4/pacbio/homo/genome/GCF_000001405.38_GRCh38.p12_genomic.fna | awk 'NR>1{print}' | awk -v len=50000 'BEGIN{OFS="\t"}{if(/^>/){head=$1}else{l=length($0)/len+1;for(i=1;i<=l;i++){tmp=substr($0,(i-1)*len+1,len);sum=gsub(/[AaTtCcGgNn]/,"&",tmp);sum_b=gsub(/[AaTt]/,"&",tmp);if(i-1==0){start=(i-1)*len}else{start=(i-1)*len+1};print head,start,i*len,sum,sum_b}}}' | awk '{gsub(">","");print}' | sort -k1,1 -k2nr,2 | awk '{if($4<50000){print $1"\t"$2"\t"$2+$4-1"\t"$5}else{print $1"\t"$2"\t"$3"\t"$5}}' > circos/len_50000.bed
cd circos/
awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$1"-"$2"-"$3"-"$4}' len_50000.bed > genome_50000.bed
#
intersectBed -loj -a genome_50000.bed -b high_frac.bed | awk '{if($7<0){a[$5]+=0}else{a[$5]+=1}}END{for(i in a)print i"-"a[i]}' | awk '{split($0,A,"-"); print A[1]"\t"A[2]"\t"A[3]"\t"$0 }' > f100_1.bed
intersectBed -loj -a f100_1.bed -b middle_frac.bed  | awk '{if($6<0){a[$4]+=0}else{a[$4]+=1}}END{for(i in a)print i"-"a[i]}' | awk '{split($0,A,"-"); print A[1]"\t"A[2]"\t"A[3]"\t"$0 }' > f100_2.bed
intersectBed -loj -a f100_2.bed -b low_frac.bed | awk '{if($6<0){a[$4]+=0}else{a[$4]+=1}}END{for(i in a)print i"-"a[i]}' | awk '{split($0,A,"-"); if(A[4]==0){print A[1]"\t"A[2]"\t"A[3]"\t""0""\t""0""\t""0""\t""0"}else{print A[1]"\t"A[2]"\t"A[3]"\t"A[5]/A[4]"\t"A[6]/A[4]"\t"A[7]/A[4]"\t"A[8]/A[4]}}' | awk '{if($4+$5+$6+$7==0){print $1"\t"$2"\t"$3"\t""0""\t""0""\t""0""\t""0"}else{print $1"\t"$2"\t"$3"\t"$4/($4+$5+$6+$7)"\t"$5/($4+$5+$6+$7)"\t"$6/($4+$5+$6+$7)"\t"$7/($4+$5+$6+$7)}}' > percentage.bed

intersectBed -loj -a test.bed -b high_frac.bed | awk '{if($7<0){a[$5]+=0}else{a[$5]+=1}}END{for(i in a)print i"-"a[i]}' | awk '{split($0,A,"-"); print A[1]"\t"A[2]"\t"A[3]"\t"$0 }' > f100_1.bed
intersectBed -loj -a f100_1.bed -b middle_frac.bed  | awk '{if($6<0){a[$4]+=0}else{a[$4]+=1}}END{for(i in a)print i"-"a[i]}' | awk '{split($0,A,"-"); print A[1]"\t"A[2]"\t"A[3]"\t"$0 }' > f100_2.bed
intersectBed -loj -a f100_2.bed -b low_frac.bed | awk '{if($6<0){a[$4]+=0}else{a[$4]+=1}}END{for(i in a)print i"-"a[i]}' | awk '{split($0,A,"-"); if(A[4]==0){print A[1]"\t"A[2]"\t"A[3]"\t""0""\t""0""\t""0""\t""0"}else{print A[1]"\t"A[2]"\t"A[3]"\t"A[5]/A[4]"\t"A[6]/A[4]"\t"A[7]/A[4]"\t"A[8]/A[4]}}' | awk '{if($4+$5+$6+$7==0){print $1"\t"$2"\t"$3"\t""0""\t""0""\t""0""\t""0"}else{print $1"\t"$2"\t"$3"\t"$4/($4+$5+$6+$7)"\t"$5/($4+$5+$6+$7)"\t"$6/($4+$5+$6+$7)"\t"$7/($4+$5+$6+$7)}}' > percentage.bed

#
mkdir homo_precentage
awk '{print $1"\t"$2"\t"$3"\t"$4}' percentage.bed > homo_precentage/low_frac_density
awk '{print $1"\t"$2"\t"$3"\t"$5}' percentage.bed > homo_precentage/middle_frac_density
awk '{print $1"\t"$2"\t"$3"\t"$6}' percentage.bed > homo_precentage/high_frac_density

/home/data4/pacbio/homo/genome/GCF_000001405.38_GRCh38.p12_genomic.fna


awk -F "\t" 'OFS="\t"{split($0,A,"frac="); split(A[2],B,";");split($1,C," ");if(B[1]>=0 && B[1]<=0.3 ) print $1,$5-1,$5,$10}' test.gff > circos/low_frac.bed
awk -F "\t" 'OFS="\t"{split($0,A,"frac="); split(A[2],B,";");split($1,C," ");if(B[1]>=0.3 && B[1]<=0.7 ) print $1,$5-1,$5,$10}' test.gff > circos/middle_frac.bed
awk -F "\t" 'OFS="\t"{split($0,A,"frac="); split(A[2],B,";");split($1,C," ");if(B[1]>=0.7 && B[1]<=1 ) print $1,$5-1,$5,$10}' test.gff > circos/high_frac.bed





