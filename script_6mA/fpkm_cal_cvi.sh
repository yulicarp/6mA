#rep8  
fastq-dump --split-3 SRR7764059.sra
fastq-dump --split-3 SRR7764039.sra
#rep3
fastq-dump --split-3 SRR7763997.sra
fastq-dump --split-3 SRR7764138.sra  
#rep6
fastq-dump --split-3 SRR7764169.sra
fastq-dump --split-3 SRR7764083.sra   
#rep5
fastq-dump --split-3 SRR7763998.sra
fastq-dump --split-3 SRR7764308.sra 
#rep4   
fastq-dump --split-3 SRR7764048.sra 
fastq-dump --split-3 SRR7764000.sra 
#rep1
fastq-dump --split-3 SRR7764136.sra
fastq-dump --split-3 SRR7764331.sra
#rep2
fastq-dump --split-3 SRR7764146.sra  
fastq-dump --split-3 SRR7764207.sra  
#rep7
fastq-dump --split-3 SRR7764323.sra 
fastq-dump --split-3 SRR7764070.sra  
#rep9
fastq-dump --split-3 SRR7764342.sra
fastq-dump --split-3 SRR7764020.sra
#建立索引
STAR --runThreadN 16 --runMode genomeGenerate --genomeFastaFiles /home/xsq/ly/project_6ma/data/arabidopsis/TAIR10.1.fna --genomeDir /home/xsq/ly/project_6ma/data/arabidopsis/genome_index
#开始比对
#rep1
SRR7764136
SRR7764331
mv SRR7764136.fastq SRR7764331.fastq rep1
STAR --runThreadN 20 --genomeDir /home/xsq/ly/project_6ma/data/arabidopsis/genome_index --readFilesIn SRR7764136.fastq --outFilterMultimapNmax 2 --outFileNamePrefix ./SRR7764136
STAR --runThreadN 20 --genomeDir /home/xsq/ly/project_6ma/data/arabidopsis/genome_index --readFilesIn SRR7764331.fastq --outFilterMultimapNmax 2 --outFileNamePrefix ./SRR7764331
samtools view -bS SRR7764136Aligned.out.sam > SRR7764136Aligned.out.bam
samtools view -bS SRR7764331Aligned.out.sam > SRR7764331Aligned.out.bam
samtools sort SRR7764136Aligned.out.bam -o SRR7764136Aligned.out.sorted.bam -@ 16
samtools sort SRR7764331Aligned.out.bam -o SRR7764331Aligned.out.sorted.bam -@ 16
samtools index SRR7764331Aligned.out.sorted.bam
samtools index SRR7764136Aligned.out.sorted.bam
samtools merge rep1.bam SRR7764331Aligned.out.sorted.bam SRR7764136Aligned.out.sorted.bam
#rep2
SRR7764146  
SRR7764207
mv SRR7764146.fastq SRR7764207.fastq rep2
STAR --runThreadN 20 --genomeDir /home/xsq/ly/project_6ma/data/arabidopsis/genome_index --readFilesIn SRR7764146.fastq --outFilterMultimapNmax 2 --outFileNamePrefix ./SRR7764146
STAR --runThreadN 20 --genomeDir /home/xsq/ly/project_6ma/data/arabidopsis/genome_index --readFilesIn SRR7764207.fastq --outFilterMultimapNmax 2 --outFileNamePrefix ./SRR7764207
samtools view -bS SRR7764146Aligned.out.sam > SRR7764146Aligned.out.bam
samtools view -bS SRR7764207Aligned.out.sam > SRR7764207Aligned.out.bam
samtools sort SRR7764146Aligned.out.bam -o SRR7764146Aligned.out.sorted.bam -@ 16
samtools sort SRR7764207Aligned.out.bam -o SRR7764207Aligned.out.sorted.bam -@ 16
samtools index SRR7764146Aligned.out.sorted.bam
samtools index SRR7764207Aligned.out.sorted.bam
samtools merge rep2.bam SRR7764146Aligned.out.sorted.bam SRR7764207Aligned.out.sorted.bam

#rep3
SRR7763997
SRR7764138
mv SRR7763997.fastq SRR7764138.fastq rep3
STAR --runThreadN 20 --genomeDir /home/xsq/ly/project_6ma/data/arabidopsis/genome_index --readFilesIn SRR7763997.fastq --outFilterMultimapNmax 2 --outFileNamePrefix ./SRR7763997
STAR --runThreadN 20 --genomeDir /home/xsq/ly/project_6ma/data/arabidopsis/genome_index --readFilesIn SRR7764138.fastq --outFilterMultimapNmax 2 --outFileNamePrefix ./SRR7764138
samtools view -bS SRR7763997Aligned.out.sam > SRR7763997Aligned.out.bam
samtools view -bS SRR7764138Aligned.out.sam > SRR7764138Aligned.out.bam
samtools sort SRR7763997Aligned.out.bam -o SRR7763997Aligned.out.sorted.bam -@ 16
samtools sort SRR7764138Aligned.out.bam -o SRR7764138Aligned.out.sorted.bam -@ 16
samtools index SRR7763997Aligned.out.sorted.bam
samtools index SRR7764138Aligned.out.sorted.bam
samtools merge rep3.bam SRR7763997Aligned.out.sorted.bam SRR7764138Aligned.out.sorted.bam

#rep4
SRR7764048 
SRR7764000
mv SRR7764048.fastq SRR7764000.fastq rep4
STAR --runThreadN 20 --genomeDir /home/xsq/ly/project_6ma/data/arabidopsis/genome_index --readFilesIn SRR7764048.fastq --outFilterMultimapNmax 2 --outFileNamePrefix ./SRR7764048
STAR --runThreadN 20 --genomeDir /home/xsq/ly/project_6ma/data/arabidopsis/genome_index --readFilesIn SRR7764000.fastq --outFilterMultimapNmax 2 --outFileNamePrefix ./SRR7764000
samtools view -bS SRR7764048Aligned.out.sam > SRR7764048Aligned.out.bam
samtools view -bS SRR7764000Aligned.out.sam > SRR7764000Aligned.out.bam
samtools sort SRR7764048Aligned.out.bam -o SRR7764048Aligned.out.sorted.bam -@ 16
samtools sort SRR7764000Aligned.out.bam -o SRR7764000Aligned.out.sorted.bam -@ 16
samtools index SRR7764000Aligned.out.sorted.bam
samtools index SRR7764048Aligned.out.sorted.bam
samtools merge rep4.bam SRR7764000Aligned.out.sorted.bam SRR7764048Aligned.out.sorted.bam
#rep5
SRR7763998
SRR7764308
mv SRR7763998.fastq SRR7764308.fastq rep5
STAR --runThreadN 20 --genomeDir /home/xsq/ly/project_6ma/data/arabidopsis/genome_index --readFilesIn SRR7763998.fastq --outFilterMultimapNmax 2 --outFileNamePrefix ./SRR7763998
STAR --runThreadN 20 --genomeDir /home/xsq/ly/project_6ma/data/arabidopsis/genome_index --readFilesIn SRR7764308.fastq --outFilterMultimapNmax 2 --outFileNamePrefix ./SRR7764308
samtools view -bS SRR7763998Aligned.out.sam > SRR7763998Aligned.out.bam
samtools view -bS SRR7764308Aligned.out.sam > SRR7764308Aligned.out.bam
samtools sort SRR7763998Aligned.out.bam -o SRR7763998Aligned.out.sorted.bam -@ 16
samtools sort SRR7764308Aligned.out.bam -o SRR7764308Aligned.out.sorted.bam -@ 16
samtools index SRR7764308Aligned.out.sorted.bam
samtools index SRR7763998Aligned.out.sorted.bam
samtools merge rep5.bam SRR7764308Aligned.out.sorted.bam SRR7763998Aligned.out.sorted.bam
#rep6
SRR7764169
SRR7764083
mv SRR7764169.fastq SRR7764083.fastq rep6
STAR --runThreadN 20 --genomeDir /home/xsq/ly/project_6ma/data/arabidopsis/genome_index --readFilesIn SRR7764169.fastq --outFilterMultimapNmax 2 --outFileNamePrefix ./SRR7764169
STAR --runThreadN 20 --genomeDir /home/xsq/ly/project_6ma/data/arabidopsis/genome_index --readFilesIn SRR7764083.fastq --outFilterMultimapNmax 2 --outFileNamePrefix ./SRR7764083
samtools view -bS SRR7764169Aligned.out.sam > SRR7764169Aligned.out.bam
samtools view -bS SRR7764083Aligned.out.sam > SRR7764083Aligned.out.bam
samtools sort SRR7764169Aligned.out.bam -o SRR7764169Aligned.out.sorted.bam -@ 16
samtools sort SRR7764083Aligned.out.bam -o SRR7764083Aligned.out.sorted.bam -@ 16
samtools index SRR7764083Aligned.out.sorted.bam
samtools index SRR7764169Aligned.out.sorted.bam
samtools merge rep6.bam SRR7764169Aligned.out.sorted.bam SRR7764083Aligned.out.sorted.bam
#rep7
SRR7764323
SRR7764070
mv SRR7764323.fastq SRR7764070.fastq rep7
STAR --runThreadN 20 --genomeDir /home/xsq/ly/project_6ma/data/arabidopsis/genome_index --readFilesIn SRR7764323.fastq --outFilterMultimapNmax 2 --outFileNamePrefix ./SRR7764323
STAR --runThreadN 20 --genomeDir /home/xsq/ly/project_6ma/data/arabidopsis/genome_index --readFilesIn SRR7764070.fastq --outFilterMultimapNmax 2 --outFileNamePrefix ./SRR7764070
samtools view -bS SRR7764323Aligned.out.sam > SRR7764323Aligned.out.bam
samtools view -bS SRR7764070Aligned.out.sam > SRR7764070Aligned.out.bam
samtools sort SRR7764323Aligned.out.bam -o SRR7764323Aligned.out.sorted.bam -@ 16
samtools sort SRR7764070Aligned.out.bam -o SRR7764070Aligned.out.sorted.bam -@ 16
samtools index SRR7764070Aligned.out.sorted.bam
samtools index SRR7764323Aligned.out.sorted.bam
samtools merge rep7.bam SRR7764323Aligned.out.sorted.bam SRR7764070Aligned.out.sorted.bam
#rep8
SRR7764059
SRR7764039
mv SRR7764059.fastq SRR7764039.fastq rep8
STAR --runThreadN 20 --genomeDir /home/xsq/ly/project_6ma/data/arabidopsis/genome_index --readFilesIn SRR7764059.fastq --outFilterMultimapNmax 2 --outFileNamePrefix ./SRR7764059
STAR --runThreadN 20 --genomeDir /home/xsq/ly/project_6ma/data/arabidopsis/genome_index --readFilesIn SRR7764039.fastq --outFilterMultimapNmax 2 --outFileNamePrefix ./SRR7764039
samtools view -bS SRR7764059Aligned.out.sam > SRR7764059Aligned.out.bam
samtools view -bS SRR7764039Aligned.out.sam > SRR7764039Aligned.out.bam
samtools sort SRR7764059Aligned.out.bam -o SRR7764059Aligned.out.sorted.bam -@ 16
samtools sort SRR7764039Aligned.out.bam -o SRR7764039Aligned.out.sorted.bam -@ 16
samtools index SRR7764039Aligned.out.sorted.bam
samtools index SRR7764059Aligned.out.sorted.bam
samtools merge rep8.bam SRR7764039Aligned.out.sorted.bam SRR7764059Aligned.out.sorted.bam
#rep9
SRR7764342
SRR7764020
mv SRR7764342.fastq SRR7764020.fastq rep9
STAR --runThreadN 20 --genomeDir /home/xsq/ly/project_6ma/data/arabidopsis/genome_index --readFilesIn SRR7764342.fastq --outFilterMultimapNmax 2 --outFileNamePrefix ./SRR7764342
STAR --runThreadN 20 --genomeDir /home/xsq/ly/project_6ma/data/arabidopsis/genome_index --readFilesIn SRR7764020.fastq --outFilterMultimapNmax 2 --outFileNamePrefix ./SRR7764020
samtools view -bS SRR7764342Aligned.out.sam > SRR7764342Aligned.out.bam
samtools view -bS SRR7764020Aligned.out.sam > SRR7764020Aligned.out.bam
samtools sort SRR7764342Aligned.out.bam -o SRR7764342Aligned.out.sorted.bam -@ 16
samtools sort SRR7764020Aligned.out.bam -o SRR7764020Aligned.out.sorted.bam -@ 16
samtools merge rep9.bam SRR7764342Aligned.out.sorted.bam SRR7764020Aligned.out.sorted.bam

SRR7764342Aligned.out.sorted.bam
SRR7764020Aligned.out.sorted.bam

samtools index rep1.bam
samtools index rep2.bam
samtools index rep3.bam
samtools index rep4.bams
samtools index rep5.bam
samtools index rep6.bam
samtools index rep7.bam
samtools index rep8.bam
samtools index rep9.bam
samtools merge ara.bam rep1.bam rep2.bam rep3.bam rep4.bam rep5.bam rep6.bam rep7.bam rep8.bam rep9.bam 
samtools sort ara.bam -o ara.sorted.bam -@ 16


samtools sort rep1.bam -o rep1.sorted.bam -@ 16




gffread GCF_000001735.4_TAIR10.1_genomic.gff -T -o genomic_ara.gtf
/home/xsq/software/cufflinks-2.2.1.Linux_x86_64/cufflinks --library-type fr-firststrand -G genomic_ara.gtf -o results_rep1 rep1.sorted.bam 


awk '{if($7>0)print $1}' lncRNA_6ma_density > 6mA_aralnc.txt
awk '{if($7==0)print $1}' lncRNA_6ma_density > non_6mA_aralnc.txt
awk '{if($7>0)print $1}' protein_6ma_density > 6mA_arapro.txt
awk '{if($7==0)print $1}' protein_6ma_density > non_6mA_arapro.txt
awk '{print $5"\t"$10}' 

samtools merge test.bam rep1/SRR7764331Aligned.out.sorted.bam rep1/SRR7764136Aligned.out.sorted.bam rep2/SRR7764146Aligned.out.sorted.bam rep2/SRR7764207Aligned.out.sorted.bam rep3/SRR7763997Aligned.out.sorted.bam rep3/SRR7764138Aligned.out.sorted.bam rep4/SRR7764000Aligned.out.sorted.bam rep4/SRR7764048Aligned.out.sorted.bam rep5/SRR7764308Aligned.out.sorted.bam rep5/SRR7763998Aligned.out.sorted.bam rep6/SRR7764169Aligned.out.sorted.bam rep6/SRR7764083Aligned.out.sorted.bam rep7/SRR7764323Aligned.out.sorted.bam rep7/SRR7764070Aligned.out.sorted.bam rep8/SRR7764039Aligned.out.sorted.bam rep8/SRR7764059Aligned.out.sorted.bam rep9/SRR7764342Aligned.out.sorted.bam rep9/SRR7764020Aligned.out.sorted.bam 
samtools sort test.bam -o test.sorted.bam -@ 16
/home/xsq/software/cufflinks-2.2.1.Linux_x86_64/cufflinks --library-type fr-firststrand -G genomic_ara.gtf -o results_test test.sorted.bam 


