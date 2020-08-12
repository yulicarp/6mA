#计算染色体长度
awk -F" " '{if ($0~/^>/){b=substr($1,2);a[b]=0}else{a[b]+=length($0)}}END{for(i in a)print(i,a[i])}' merge.fa
awk 'BEGIN{flag=0}{if(/^>/){if(/^>NC/){print $0;flag=1};if(/^>NW/){flag=0}}else if(flag==1){print $0}}' GCF_000001635.26_GRCm38.p6_genomic.fna > test2.fa
awk '{if(/^>/){gsub(">","",$0)}else{sum=gsub(/[AaTtCcGgNn]/,"&",$0);print sum}}' test.fa > test1
awk '{sum+=$1} END {print "Sum = ", sum}' test1 > test2
cat NC_NT.fa |grep -v '#' |awk '/^>N/{head=$1} !/^>N/{a[head]+=gsub('/[AaTt]/',"&")}END{for(i in a ){print i"\t"a[i]}}' |grep 'NC'|awk '{gsub(">","");print}' |sort | more

awk '{if(/^>NT_033777.3/){gsub(">","",$0)}else{sum=gsub(/[AaTt]/,"&",$0);print sum}}' NC_NT.fa > test1
awk '{sum+=$1} END {print "Sum = ", sum}' test1 > test2
#根据covrage筛选6mA位点
loop_sum <- function(y1){
len <- length(y1)
sum_y1 <- c()
for(i in 1:len){
sum_y1[i] <- sum(y1[1:i])
}
return (sum_y1)
}
awk '{split($0,A,"coverage=");split(A[2],B,";");if(B[1]>=25)print $0}' *6magff* > *6ma_cov25*
#计算各染色体6mA位点数
awk '{a[$1]++}END{for (i in a)print i"\t"a[i]}' *6macovbed* 
#计算各种基因类型的基因6mA_density
sh arab_density.sh
awk '!x[$4]++' filename > intersectbed/test
cat test |awk '{a[$1]++}END{for (i in a)print i"\t"a[i]}' |sort -k1
cat lncRNA_6ma_density |awk '{a[$7]++}END{for (i in a)print i"\t"a[i]}' |sort -k1
#折线图
#circos图

#对物种内各类RNA 6mA density作比较（直方图/箱型图）
awk '{if($8>0)print $8}' snRNA_6ma_density > snRNA
awk '{if($8>0)print $8}' tRNA_6ma_density > tRNA
awk '{if($8>0)print $8}' rRNA_6ma_density > rRNA
awk '{if($8>0)print $8}' lncRNA_6ma_density > rRNA
awk '{if($8>0)print $8}' miRNA_6ma_density > miRNA
awk '{if($8>0)print $8}' protein_6ma_density > protein
paste tRNA rRNA snRNA miRNA lncRNA protein > homo_density
paste tRNA rRNA snRNA miRNA lncRNA protein > fly_density
paste ara/lncRNA ele/lncRNA fly/lncRNA homo/lncRNA > lncRNA_density
paste ara/rRNA ele/rRNA fly/rRNA homo/rRNA > rRNA_density
paste ara/snRNA ele/snRNA fly/snRNA homo/snRNA > snRNA_density
paste ara/miRNA ele/miRNA fly/miRNA homo/miRNA > miRNA_density
paste ara/tRNA ele/tRNA fly/tRNA homo/tRNA > tRNA_density

#附件制作
#S1
#ara
awk '{split($0,A,"coverage=");split(A[2],B,";");split($0,C,"context=");split(C[2],D,";");split($0,E,"IPDRatio=");split(E[2],F,";");split($0,a,"frac=");split(a[2],b,";");split($0,c,"fracLow=");split(c[2],d,";");split($0,e,"fracUp=");split(e[2],f,";");split($0,g,"identificationQv=");print $1"\t"$9"\t"$12"\t"B[1]"\t"D[1]"\t"F[1]"\t"b[1]"\t"d[1]"\t"f[1]"\t"g[2]}'
awk '{gsub("NC_003070.9","chr1",$1);gsub("NC_003071.7","chr2",$1);gsub("NC_003074.8","chr3",$1);gsub("NC_003075.7","chr4",$1);gsub("NC_003076.8","chr5",$1);print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$9"\t"$10}'

awk '{split($0,A,"coverage=");split(A[2],B,";");split($0,C,"context=");split(C[2],D,";");split($0,E,"IPDRatio=");split(E[2],F,";");split($0,a,"frac=");split(a[2],b,";");split($0,c,"fracLow=");split(c[2],d,";");split($0,e,"fracUp=");split(e[2],f,";");split($0,g,"identificationQv=");print $1"\t"$11"\t"$14"\t"B[1]"\t"D[1]"\t"F[1]"\t"b[1]"\t"d[1]"\t"f[1]"\t"g[2]}'
awk '{gsub("NC_037304.1","MT",$1);print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$9"\t"$10}'

awk '{split($0,A,"coverage=");split(A[2],B,";");split($0,C,"context=");split(C[2],D,";");split($0,E,"IPDRatio=");split(E[2],F,";");split($0,a,"frac=");split(a[2],b,";");split($0,c,"fracLow=");split(c[2],d,";");split($0,e,"fracUp=");split(e[2],f,";");split($0,g,"identificationQv=");print $1"\t"$9"\t"$12"\t"B[1]"\t"D[1]"\t"F[1]"\t"b[1]"\t"d[1]"\t"f[1]"\t"g[2]}'
awk '{gsub("NC_000932.1","Pltd",$1);print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$9"\t"$10}'

NC_003070.9
NC_003071.7
NC_003074.8
NC_003075.7
NC_003076.8

NC_037304.1
NC_000932.1
#ele
awk '{split($0,A,"coverage=");split(A[2],B,";");split($0,C,"context=");split(C[2],D,";");split($0,E,"IPDRatio=");split(E[2],F,";");split($0,a,"frac=");split(a[2],b,";");split($0,c,"fracLow=");split(c[2],d,";");split($0,e,"fracUp=");split(e[2],f,";");split($0,g,"identificationQv=");print $1"\t"$8"\t"$11"\t"B[1]"\t"D[1]"\t"F[1]"\t"b[1]"\t"d[1]"\t"f[1]"\t"g[2]}'
awk '{gsub("NC_003279.8","chr1",$1);gsub("NC_003280.10","chr2",$1);gsub("NC_003281.10","chr3",$1);gsub("NC_003282.8","chr4",$1);gsub("NC_003283.11","chr5",$1);gsub("NC_003284.9","chr6",$1);print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$9"\t"$10}'

awk '{split($0,A,"coverage=");split(A[2],B,";");split($0,C,"context=");split(C[2],D,";");split($0,E,"IPDRatio=");split(E[2],F,";");split($0,a,"frac=");split(a[2],b,";");split($0,c,"fracLow=");split(c[2],d,";");split($0,e,"fracUp=");split(e[2],f,";");split($0,g,"identificationQv=");print $1"\t"$9"\t"$12"\t"B[1]"\t"D[1]"\t"F[1]"\t"b[1]"\t"d[1]"\t"f[1]"\t"g[2]}'
awk '{gsub("NC_001328.1","MT",$1);print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$9"\t"$10}'

NC_003279.8
NC_003280.10
NC_003281.10
NC_003282.8
NC_003283.11
NC_003284.9

NC_001328.1

#fly
awk '{split($0,A,"coverage=");split(A[2],B,";");split($0,C,"context=");split(C[2],D,";");split($0,E,"IPDRatio=");split(E[2],F,";");split($0,a,"frac=");split(a[2],b,";");split($0,c,"fracLow=");split(c[2],d,";");split($0,e,"fracUp=");split(e[2],f,";");split($0,g,"identificationQv=");print $1"\t"$8"\t"$11"\t"B[1]"\t"D[1]"\t"F[1]"\t"b[1]"\t"d[1]"\t"f[1]"\t"g[2]}'
awk '{gsub("NC_004353.4","chr4",$1);gsub("NC_004354.4","chrX",$1);gsub("NC_024512.1","chrY",$1);gsub("NT_033777.3","chr3R",$1);gsub("NT_033778.4","chr2R",$1);gsub("NT_033779.5","chr2L",$1);gsub("NT_037436.4","chr3L",$1);print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$9"\t"$10}'

awk '{split($0,A,"coverage=");split(A[2],B,";");split($0,C,"context=");split(C[2],D,";");split($0,E,"IPDRatio=");split(E[2],F,";");split($0,a,"frac=");split(a[2],b,";");split($0,c,"fracLow=");split(c[2],d,";");split($0,e,"fracUp=");split(e[2],f,";");split($0,g,"identificationQv=");print $1"\t"$9"\t"$12"\t"B[1]"\t"D[1]"\t"F[1]"\t"b[1]"\t"d[1]"\t"f[1]"\t"g[2]}'
awk '{gsub("NC_024511.2","MT",$1);print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$9"\t"$10}'

NC_004353.4 Drosophila melanogaster chromosome 4
NC_004354.4 Drosophila melanogaster chromosome X
NC_024512.1 Drosophila melanogaster chromosome Y
NT_033777.3 Drosophila melanogaster chromosome 3R
NT_033778.4 Drosophila melanogaster chromosome 2R
NT_033779.5 Drosophila melanogaster chromosome 2L
NT_037436.4 Drosophila melanogaster chromosome 3L

NC_024511.2
#homo
awk '{split($0,A,"coverage=");split(A[2],B,";");split($0,C,"context=");split(C[2],D,";");split($0,E,"IPDRatio=");split(E[2],F,";");split($0,a,"frac=");split(a[2],b,";");split($0,c,"fracLow=");split(c[2],d,";");split($0,e,"fracUp=");split(e[2],f,";");split($0,g,"identificationQv=");print $1"\t"$5"\t"$8"\t"B[1]"\t"D[1]"\t"F[1]"\t"b[1]"\t"d[1]"\t"f[1]"\t"g[2]}'
awk '{gsub("chrM","MT",$1);print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$9"\t"$10}'

#supplementary S2
awk '{if($8>0)print $1"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8}'
cat tRNA miRNA snRNA rRNA lncRNA protein 
B1
D1
F1
b1
d1
f1
g2
