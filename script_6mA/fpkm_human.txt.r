/public/users/ly/project/fpkm/human/953
fastq-dump --split-3 SRR3602760.sra

#genome_index
STAR --runThreadN 16 --runMode genomeGenerate --genomeFastaFiles /public/users/ly/project/fpkm/human/953/GCF_000001405.38_GRCh38.p12_genomic.fna --genomeDir /public/users/ly/project/fpkm/human/953/genome_index
#mapping
STAR --runThreadN 20 --genomeDir /home/xsq/ly/project_6ma/data/human/genome_index --readFilesIn /home/data4/fpkm/human/953/SRR3602760_1.fastq /home/data4/fpkm/human/953/SRR3602760_2.fastq --outFilterMultimapNmax 2 

samtools view -bS Aligned.out.sam > Aligned.out.bam
samtools sort Aligned.out.bam -o aligned.out.sorted.bam -@ 16

gffread GCF_000001405.38_GRCh38.p12_genomic -T -o genomic.gtf

/home/xsq/software/cufflinks-2.2.1.Linux_x86_64/cufflinks --library-type fr-firststrand -G /home/data4/fpkm/human/genomic.gtf -o results aligned.out.sorted.bam 



/home/xsq/ly/project_6ma/data/human/genome_index