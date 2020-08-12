# meme 4bp
# human
#awk '{print $1":"$2"\t"$4}' homo953_meme.bed | awk '{print ">"$1"\n"substr($2,17,9)}' > homo_meme.fa
#/home/xsq/software/meme/bin/meme-chip -oc /home/data4/pacbio/homo/6ma/953/meme_953 -norc -meme-mod anr -meme-minw 5 -meme-maxw 7 -meme-nmotifs 10 -spamo-skip -fimo-skip homo_meme.fa
/home/xsq/software/meme/bin/meme-chip -oc /home/data4/pacbio/homo/6ma/953/meme_953 -norc -meme-mod anr -meme-minw 4 -meme-maxw 10 -meme-nmotifs 10 -spamo-skip -fimo-skip homo_meme.fa

# meme 4bp
# human
awk '{print $1":"$2"\t"$4}' homo953_meme.bed | awk '{print ">"$1"\n"substr($2,1,41)}' > homo_meme.fa
/home/xsq/software/meme/bin/meme-chip -oc /home/data4/pacbio/homo/6ma/953/meme_953/gene_20bp -norc -meme-mod anr -meme-minw 5 -meme-maxw 7 -meme-nmotifs 10 -spamo-skip -fimo-skip homo_meme.fa
/home/xsq/software/meme/bin/meme-chip -oc /home/data4/pacbio/homo/6ma/953/meme_953 -norc -meme-mod anr -meme-minw 4 -meme-maxw 10 -meme-nmotifs 10 -spamo-skip -fimo-skip homo_meme.fa

# fruitfly
#awk '{print $1":"$2"\t"$4}' meme_fly.bed | awk '{print ">"$1"\n"substr($2,17,9)}' > fly_meme.fa
#/home/xsq/software/meme/bin/meme-chip -oc /home/data4/pacbio/Drosophila_melanogaster/6ma_cov/meme_fly -norc -meme-mod anr -meme-minw 5 -meme-maxw 7 -meme-nmotifs 10 -spamo-skip -fimo-skip fly_meme.fa
/home/xsq/software/meme/bin/meme-chip -oc /home/data4/pacbio/Drosophila_melanogaster/6ma_cov/meme_fly/gene_10bp -norc -meme-mod anr -meme-minw 5 -meme-maxw 7 -meme-nmotifs 10 -spamo-skip -fimo-skip fly_meme.fa

awk '{print $1":"$2"\t"$4}' meme_fly.bed | awk '{print ">"$1"\n"substr($2,1,41)}' > fly_meme.fa
/home/xsq/software/meme/bin/meme-chip -oc /home/data4/pacbio/Drosophila_melanogaster/6ma_cov/meme_fly/gene_20bp -norc -meme-mod anr -meme-minw 5 -meme-maxw 7 -meme-nmotifs 10 -spamo-skip -fimo-skip fly_meme.fa


# elegans
#awk '{print $1":"$2"\t"$4}' meme_ele.bed | awk '{print ">"$1"\n"substr($2,17,9)}' > ele_meme.fa
#/home/xsq/software/meme/bin/meme-chip -oc /home/data4/pacbio/Caenorhabditis_elegans/6ma_cov/meme_ele -norc -meme-mod anr -meme-minw 5 -meme-maxw 7 -meme-nmotifs 10 -spamo-skip -fimo-skip ele_meme.fa
/home/xsq/software/meme/bin/meme-chip -oc /home/data4/pacbio/Caenorhabditis_elegans/6ma_cov/meme_ele/gene_10bp -norc -meme-mod anr -meme-minw 4 -meme-maxw 10 -meme-nmotifs 10 -spamo-skip -fimo-skip ele_meme.fa

awk '{print $1":"$2"\t"$4}' meme_ele.bed | awk '{print ">"$1"\n"substr($2,19,5)}' > ele_meme.fa
/home/xsq/software/meme/bin/meme-chip -oc /home/data4/pacbio/Caenorhabditis_elegans/6ma_cov/meme_ele/gene_2bp -norc -meme-mod anr -meme-minw 5 -meme-maxw 7 -meme-nmotifs 10 -spamo-skip -fimo-skip ele_meme.fa
/home/xsq/software/meme/bin/meme-chip -oc /home/data4/pacbio/Caenorhabditis_elegans/6ma_cov/meme_ele/gene_10bp -norc -meme-mod anr -meme-minw 4 -meme-maxw 10 -meme-nmotifs 10 -spamo-skip -fimo-skip ele_meme.fa

awk '{print $1":"$2"\t"$4}' meme_ele.bed | awk '{print ">"$1"\n"substr($2,1,41)}' > ele_meme.fa

# arabidopsis
awk '{print $1":"$2"\t"$4}' meme_ara.bed | awk '{print ">"$1"\n"substr($2,17,9)}' > ara_meme.fa
/home/xsq/software/meme/bin/meme-chip -oc /home/data4/pacbio/arabidopsis/6ma_666/meme_ara/gene_10bp -norc -meme-mod anr -meme-minw 4 -meme-maxw 10 -meme-nmotifs 10 -spamo-skip -fimo-skip ara_meme.fa


#meme_10bp
#ara
#awk '{print $1":"$2"\t"$4}' meme_ara.bed | awk '{print ">"$1"\n"substr($2,11,21)}' > ara_meme.fa
/home/xsq/software/meme/bin/meme-chip -oc /home/data4/pacbio/arabidopsis/6ma_666/meme_ara/gene_10bp -norc -meme-mod anr -meme-minw 4 -meme-maxw 10 -meme-nmotifs 10 -spamo-skip -fimo-skip ara_meme.fa

#ele
#awk '{print $1":"$2"\t"$4}' meme_ele.bed | awk '{print ">"$1"\n"substr($2,11,21)}' > ele_meme.fa
/home/xsq/software/meme/bin/meme-chip -oc /home/data4/pacbio/Caenorhabditis_elegans/6ma_cov/meme_ele/gene_10bp -norc -meme-mod anr -meme-minw 4 -meme-maxw 10 -meme-nmotifs 10 -spamo-skip -fimo-skip ele_meme.fa

#fly
awk '{print $1":"$2"\t"$4}' meme_fly.bed | awk '{print ">"$1"\n"substr($2,11,21)}' > fly_meme.fa
#/home/xsq/software/meme/bin/meme-chip -oc /home/data4/pacbio/Drosophila_melanogaster/6ma_cov/meme_fly/gene_10bp -norc -meme-mod anr -meme-minw 4 -meme-maxw 10 -meme-nmotifs 10 -spamo-skip -fimo-skip fly_meme.fa


######################################################################################################
awk '{print $6"\t"$7"\t"$8}' *bed* > test
awk '!x[$2]++' test > *motif_protein.bed
#ara_lncRNA
intersectBed -a meme_ara.bed -b motif_lncRNA.bed -wa -wb > test.bed
#4bp
awk '{print $1":"$2"\t"$4}' test.bed | awk '{print ">"$1"\n"substr($2,17,9)}' > ara_lncRNA.fa
/home/xsq/software/meme/bin/meme-chip -oc /home/data4/pacbio/arabidopsis/6ma_666/meme_ara/lncRNA_4bp -norc -meme-mod anr -meme-minw 5 -meme-maxw 7 -meme-nmotifs 10 -spamo-skip -fimo-skip ara_lncRNA.fa
#10bp
awk '{print $1":"$2"\t"$4}' test.bed | awk '{print ">"$1"\n"substr($2,11,21)}' > ara_lncRNA.fa
/home/xsq/software/meme/bin/meme-chip -oc /home/data4/pacbio/arabidopsis/6ma_666/meme_ara/lncRNA_10bp -norc -meme-mod anr -meme-minw 5 -meme-maxw 7 -meme-nmotifs 10 -spamo-skip -fimo-skip ara_lncRNA.fa
/home/xsq/software/meme/bin/meme-chip -oc /home/data4/pacbio/arabidopsis/6ma_666/meme_ara/lncRNA_10bp_2 -norc -meme-mod anr -meme-minw 4 -meme-maxw 10 -meme-nmotifs 10 -spamo-skip -fimo-skip ara_lncRNA.fa
ara_protein
awk '{print $6"\t"$7"\t"$8}' protein_6ma_ara.bed > test
awk '!x[$2]++' test > motif_protein.bed
cp motif_protein.bed ../../../meme_ara/protein/
cd ../../../meme_ara/protein/
intersectBed -a meme_ara.bed -b motif_protein.bed -wa -wb > test.bed
#4bp
awk '{print $1":"$2"\t"$4}' test.bed | awk '{print ">"$1"\n"substr($2,17,9)}' > ara_protein.fa
/home/xsq/software/meme/bin/meme-chip -oc /home/data4/pacbio/arabidopsis/6ma_666/meme_ara/protein_4bp -norc -meme-mod anr -meme-minw 5 -meme-maxw 7 -meme-nmotifs 10 -spamo-skip -fimo-skip ara_protein.fa
#10bp
awk '{print $1":"$2"\t"$4}' test.bed | awk '{print ">"$1"\n"substr($2,11,21)}' > ara_protein.fa
/home/xsq/software/meme/bin/meme-chip -oc /home/data4/pacbio/arabidopsis/6ma_666/meme_ara/protein_10bp -norc -meme-mod anr -meme-minw 5 -meme-maxw 7 -meme-nmotifs 10 -spamo-skip -fimo-skip ara_protein.fa

#ele
#lncRNA
intersectBed -a meme_ele.bed -b motif_lncRNA.bed -wa -wb > test.bed
#4bp
awk '{print $1":"$2"\t"$4}' test.bed | awk '{print ">"$1"\n"substr($2,17,9)}' > ele_meme.fa
/home/xsq/software/meme/bin/meme-chip -oc /home/data4/pacbio/Caenorhabditis_elegans/6ma_cov/meme_ele/lncRNA_4bp -norc -meme-mod anr -meme-minw 5 -meme-maxw 7 -meme-nmotifs 10 -spamo-skip -fimo-skip ele_meme.fa
#10bp
awk '{print $1":"$2"\t"$4}' test.bed | awk '{print ">"$1"\n"substr($2,11,21)}' > ele_meme.fa
/home/xsq/software/meme/bin/meme-chip -oc /home/data4/pacbio/Caenorhabditis_elegans/6ma_cov/meme_ele/lncRNA_10bp -norc -meme-mod anr -meme-minw 4 -meme-maxw 10 -meme-nmotifs 10 -spamo-skip -fimo-skip ele_meme.fa
#protein
intersectBed -a meme_ele.bed -b motif_protein.bed -wa -wb > test.bed
$4bp
awk '{print $1":"$2"\t"$4}' test.bed | awk '{print ">"$1"\n"substr($2,17,9)}' > ele_meme.fa
/home/xsq/software/meme/bin/meme-chip -oc /home/data4/pacbio/Caenorhabditis_elegans/6ma_cov/meme_ele/protein_4bp -norc -meme-mod anr -meme-minw 5 -meme-maxw 7 -meme-nmotifs 30 -spamo-skip -fimo-skip ele_meme.fa
#10bp
awk '{print $1":"$2"\t"$4}' test.bed | awk '{print ">"$1"\n"substr($2,11,21)}' > ele_meme.fa
/home/xsq/software/meme/bin/meme-chip -oc /home/data4/pacbio/Caenorhabditis_elegans/6ma_cov/meme_ele/protein_10bp -norc -meme-mod anr -meme-minw 4 -meme-maxw 10 -meme-nmotifs 10 -spamo-skip -fimo-skip ele_meme.fa

#fly
#lncRNA
intersectBed -a meme_fly.bed -b motif_lncRNA.bed -wa -wb > test.bed
#4bp
awk '{print $1":"$2"\t"$4}' test.bed | awk '{print ">"$1"\n"substr($2,17,9)}' > fly_meme.fa
/home/xsq/software/meme/bin/meme-chip -oc /home/data4/pacbio/Drosophila_melanogaster/6ma_cov/meme_fly/lncRNA_4bp -norc -meme-mod anr -meme-minw 5 -meme-maxw 7 -meme-nmotifs 10 -spamo-skip -fimo-skip fly_meme.fa
#10bp
awk '{print $1":"$2"\t"$4}' test.bed | awk '{print ">"$1"\n"substr($2,11,21)}' > fly_meme.fa
/home/xsq/software/meme/bin/meme-chip -oc /home/data4/pacbio/Drosophila_melanogaster/6ma_cov/meme_fly/gene_10bp -norc -meme-mod anr -meme-minw 4 -meme-maxw 10 -meme-nmotifs 10 -spamo-skip -fimo-skip fly_meme.fa
#protein
awk '{print $6"\t"$7"\t"$8}'
awk '{print $1":"$2"\t"$4}' test.bed | awk '{print ">"$1"\n"substr($2,17,9)}' > fly_meme.fa
/home/xsq/software/meme/bin/meme-chip -oc /home/data4/pacbio/Drosophila_melanogaster/6ma_cov/meme_fly/protein_4bp -norc -meme-mod anr -meme-minw 5 -meme-maxw 7 -meme-nmotifs 10 -spamo-skip -fimo-skip fly_meme.fa


#homo
#lncRNA_4bp
/home/xsq/software/meme/bin/meme-chip -oc /home/data4/pacbio/homo/6ma/953/meme_953/lncRNA_4bp -norc -meme-mod anr -meme-minw 4 -meme-maxw 10 -meme-nmotifs 10 -spamo-skip -fimo-skip homo_meme.fa
#protein_4bp
/home/xsq/software/meme/bin/meme-chip -oc /home/data4/pacbio/homo/6ma/953/meme_953/protein_4bp -norc -meme-mod anr -meme-minw 4 -meme-maxw 10 -meme-nmotifs 10 -spamo-skip -fimo-skip homo_meme.fa






















































