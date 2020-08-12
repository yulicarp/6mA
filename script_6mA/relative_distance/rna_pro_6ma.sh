#ara
awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$6"\t"$7}' lncRNA.bed > ../rna_6ma/lncRNA/lncRNA.bed
intersectBed -a rna_6ma/lncRNA/lncRNA.bed -b /home/data4/pacbio/arabidopsis/6ma_666/6ma.bed -wa -wb > relative_distance/lncRNA_6ma.bed
awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$6"\t"$7}' protein.bed > ../rna_6ma/protein/protein.bed
intersectBed -a rna_6ma/protein/protein.bed -b /home/data4/pacbio/arabidopsis/6ma_666/6ma.bed -wa -wb > relative_distance/protein_6ma.bed
#ele
awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$6"\t"$7}' lncRNA.bed > ../rna_6ma/lncRNA/lncRNA.bed
intersectBed -a rna_6ma/lncRNA/lncRNA.bed -b /home/data4/pacbio/Caenorhabditis_elegans/6ma_cov/6ma.bed -wa -wb > relative_distance/lncRNA_6ma.bed
awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$6"\t"$7}' protein.bed > ../rna_6ma/protein/protein.bed
intersectBed -a rna_6ma/protein/protein.bed -b /home/data4/pacbio/Caenorhabditis_elegans/6ma_cov/6ma.bed -wa -wb > relative_distance/protein_6ma.bed
#fly
awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$6"\t"$7}' lncRNA.bed > ../rna_6ma/lncRNA/lncRNA.bed
intersectBed -a rna_6ma/lncRNA/lncRNA.bed -b /home/data4/pacbio/Drosophila_melanogaster/6ma_cov/6ma1.bed -wa -wb > relative_distance/lncRNA_6ma.bed
awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$6"\t"$7}' protein.bed > ../rna_6ma/protein/protein.bed
intersectBed -a rna_6ma/protein/protein.bed -b /home/data4/pacbio/Drosophila_melanogaster/6ma_cov/6ma1.bed -wa -wb > relative_distance/protein_6ma.bed
#homo
awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$6"\t"$7}' lncRNA.bed > ../rna_6ma/lncRNA/lncRNA.bed
intersectBed -a rna_6ma/lncRNA/lncRNA.bed -b /home/data4/pacbio/homo/6ma/953/6ma.bed -wa -wb > relative_distance/lncRNA_6ma.bed
awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$6"\t"$7}' protein.bed > ../rna_6ma/protein/protein.bed
intersectBed -a rna_6ma/protein/protein.bed -b /home/data4/pacbio/homo/6ma/953/6ma.bed -wa -wb > relative_distance/protein_6ma.bed
