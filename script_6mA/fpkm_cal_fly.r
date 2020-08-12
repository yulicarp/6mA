fastq-dump --split-3 SRR8769286.sra
STAR --runThreadN 16 --runMode genomeGenerate --genomeFastaFiles /public/users/ly/project/fpkm/fly/GCF_000001215.4_Release_6_plus_ISO1_MT_genomic.fna --genomeDir /public/users/ly/project/fpkm/fly/genome_index

STAR --runThreadN 20 --genomeDir /public/users/ly/project/fpkm/fly/genome_index --readFilesIn /public/users/ly/project/fpkm/fly/SRR060643.fastq --outFilterMultimapNmax 2 

samtools view -bS Aligned.out.sam > Aligned.out.bam
samtools sort Aligned.out.bam -o aligned.out.sorted.bam -@ 16

gffread GCF_000001215.4_Release_6_plus_ISO1_MT_genomic.gff -T -o genomic.gtf

cufflinks --library-type fr-firststrand -G /public/users/ly/project/fpkm/fly/genomic.gtf -o results aligned.out.sorted.bam 


<SRR5181411>
fastq-dump --split-3 SRR5181411.sra
STAR --runThreadN 16 --runMode genomeGenerate --genomeFastaFiles /home/xsq/ly/project_6ma/data/fly/GCF_000001215.4_Release_6_plus_ISO1_MT_genomic.fna --genomeDir /home/xsq/ly/project_6ma/data/fly/genome_index

STAR --runThreadN 20 --genomeDir /home/xsq/ly/project_6ma/data/fly/genome_index --readFilesIn /home/data4/fpkm/fly/SRR5181411_1.fastq /home/data4/fpkm/fly/SRR5181411_2.fastq --outFilterMultimapNmax 2 
samtools view -bS Aligned.out.sam > Aligned.out.bam
samtools sort Aligned.out.bam -o aligned.out.sorted.bam -@ 16
gffread GCF_000001215.4_Release_6_plus_ISO1_MT_genomic.gff -T -o genomic.gtf

/home/xsq/software/cufflinks-2.2.1.Linux_x86_64/cufflinks --library-type fr-firststrand -G /home/data4/fpkm/fly/genomic.gtf -o results aligned.out.sorted.bam 


<SRR5181412>
fastq-dump --split-3 SRR5181412.sra

STAR --runThreadN 20 --genomeDir /home/xsq/ly/project_6ma/data/fly/genome_index --readFilesIn /home/data4/fpkm/fly/SRR5181412_1.fastq /home/data4/fpkm/fly/SRR5181412_2.fastq --outFilterMultimapNmax 2 
samtools view -bS Aligned.out.sam > Aligned.out.bam
samtools sort Aligned.out.bam -o aligned.out.sorted.bam -@ 16
gffread GCF_000001215.4_Release_6_plus_ISO1_MT_genomic.gff -T -o genomic.gtf

/home/xsq/software/cufflinks-2.2.1.Linux_x86_64/cufflinks --library-type fr-firststrand -G /home/data4/fpkm/fly/genomic.gtf -o results aligned.out.sorted.bam 

<SRR8270436>
fastq-dump --split-3 SRR8270436.1

STAR --runThreadN 20 --genomeDir /home/xsq/ly/project_6ma/data/fly/genome_index --readFilesIn /home/data4/fpkm/fly3/SRR8270436.1_1.fastq /home/data4/fpkm/fly3/SRR8270436.1_2.fastq --outFilterMultimapNmax 2 
samtools view -bS Aligned.out.sam > Aligned.out.bam
samtools sort Aligned.out.bam -o aligned.out.sorted.bam -@ 16
gffread GCF_000001215.4_Release_6_plus_ISO1_MT_genomic.gff -T -o genomic.gtf

/home/xsq/software/cufflinks-2.2.1.Linux_x86_64/cufflinks --library-type fr-firststrand -G /home/data4/fpkm/fly/genomic.gtf -o results aligned.out.sorted.bam 

<SRR8270442>
fastq-dump --split-3 SRR8270442.1

STAR --runThreadN 20 --genomeDir /home/xsq/ly/project_6ma/data/fly/genome_index --readFilesIn /home/data4/fpkm/fly4/SRR8270442.1_1.fastq /home/data4/fpkm/fly4/SRR8270442.1_2.fastq --outFilterMultimapNmax 2 
samtools view -bS Aligned.out.sam > Aligned.out.bam
samtools sort Aligned.out.bam -o aligned.out.sorted.bam -@ 16
gffread GCF_000001215.4_Release_6_plus_ISO1_MT_genomic.gff -T -o genomic.gtf

/home/xsq/software/cufflinks-2.2.1.Linux_x86_64/cufflinks --library-type fr-firststrand -G /home/data4/fpkm/fly/genomic.gtf -o results aligned.out.sorted.bam 


