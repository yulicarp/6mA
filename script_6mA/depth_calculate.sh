samtools depth -a  *bamfile*  |  awk '{sum+=$3} END { print "Average = ",sum/NR}'
samtools depth -a  /home/data4/pacbio/Caenorhabditis_elegans/SRP186435/data/aligned_reads.bam | awk '{sum+=$3} END { print "Average = ",sum/100286401}'
samtools stats SRR5630802.sort.order.bam | grep ^SN | cut -f 2-



while read LINE 
do
	echo $LINE
	samtools flagstat $LINE | grep ^SN | cut -f 2-
done < bam_stats.txt 
 
