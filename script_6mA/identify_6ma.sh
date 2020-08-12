# /usr/bin/bash
ls *.tar.gz | xargs -n1 tar xzvf

source /home/xsq/software/smrtanalysis/current/etc/setup.sh
find /home/data1/pacbio/arabidopsis/SAMN04539663 |grep -w bax.h5 > /home/data1/pacbio/smrt663/input_ara663.fofn
cd /home/data1/pacbio/smrt663
/home/xsq/software/smrtanalysis/install/smrtanalysis_2.3.0.140936/analysis/bin/fofnToSmrtpipeInput.py input_ara663.fofn > input_ara663.xml

/home/xsq/software/smrtanalysis/current/analysis/bin/smrtpipe.py -D TMP=/home/data1/tmp -D NPROC=15 --params=/home/data1/pacbio/smrt663/params_lm.xml xml:/home/data1/pacbio/smrt663/input_ara663.xml --output=/home/data1/pacbio/smrt663 >/home/data1/pacbio/smrt663/temp.log

cmph5tools.py select --where "(Reference=='NC_000932.1 Arabidopsis thaliana chloroplast, complete genome')" --outFile Pltd.cmp.h5 aligned_reads.cmp.h5
NC_000932.1 Arabidopsis thaliana chloroplast, complete genome     1819876916             0.9            9857.8
ipdSummary.py -v -W /home/data1/pacbio/smrt663/data/base_mod_contig_ids.txt --methylFraction --identify m6A,m4C --paramsPath /home/xsq/software/smrtanalysis/current/analysis/etc/algorithm_parameters/2015-11/kineticsTools --numWorkers 25 --summary_h5 /home/data1/pacbio/smrt/data/Pltd_kinetics.h5 --gff /home/data1/pacbio/smrt/data/modification.Pltd.gff --csv /home/data1/pacbio/smrt/data/modification.Pltd.csv --reference /home/xsq/ly/project_6ma/data/arabidopsis/genome/Tair10/Tair10/sequence/Tair10.fasta  /home/data1/pacbio/smrt/data/Pltd.cmp.h5 || exit $?
#Task 1

cmph5tools.py select --where "(Reference=='NC_003070.9 Arabidopsis thaliana chromosome 1 sequence')" --outFile chr1.cmp.h5 aligned_reads.cmp.h5
cmph5tools.py select --where "(Reference=='NC_003071.7 Arabidopsis thaliana chromosome 2 sequence')" --outFile chr2.cmp.h5 aligned_reads.cmp.h5
cmph5tools.py select --where "(Reference=='NC_003074.8 Arabidopsis thaliana chromosome 3 sequence')" --outFile chr3.cmp.h5 aligned_reads.cmp.h5
cmph5tools.py select --where "(Reference=='NC_003075.7 Arabidopsis thaliana chromosome 4 sequence')" --outFile chr4.cmp.h5 aligned_reads.cmp.h5
cmph5tools.py select --where "(Reference=='NC_003076.8 Arabidopsis thaliana chromosome 5 sequence')" --outFile chr5.cmp.h5 aligned_reads.cmp.h5
cmph5tools.py select --where "(Reference=='NC_037304.1 Arabidopsis thaliana ecotype Col-0 mitochondrion, complete genome')" --outFile MT.cmp.h5 aligned_reads.cmp.h5




NC_003070.9 Arabidopsis thaliana chromosome 1 sequence     3498867696             0.9           10660.3
NC_003071.7 Arabidopsis thaliana chromosome 2 sequence     2403627128             0.9           10260.9
NC_003074.8 Arabidopsis thaliana chromosome 3 sequence     3078011735             0.9           10166.1
NC_003075.7 Arabidopsis thaliana chromosome 4 sequence     2246426547             0.8           10135.4
NC_003076.8 Arabidopsis thaliana chromosome 5 sequence     3241365244             0.9           10502.0
NC_037304.1 Arabidopsis thaliana ecotype Col-0 mitochondrion, complete genome     224072764              0.9            9587.2





find /home/data1/pacbio/arabidopsis/SAMN04539666 |grep -w bax.h5 > /home/data1/pacbio/smrt666/input_ara666.fofn
cd /home/data1/pacbio/smrt666
/home/xsq/software/smrtanalysis/install/smrtanalysis_2.3.0.140936/analysis/bin/fofnToSmrtpipeInput.py input_ara666.fofn > input_ara666.xml

/home/xsq/software/smrtanalysis/current/analysis/bin/smrtpipe.py -D TMP=/home/data1/tmp -D NPROC=15 --params=/home/data1/pacbio/smrt666/params_lm.xml xml:/home/data1/pacbio/smrt666/input_ara666.xml --output=/home/data1/pacbio/smrt666 >/home/data1/pacbio/smrt666/temp.log
ipdSummary.py -v -W /home/data1/pacbio/smrt666/data/base_mod_contig_ids.txt  --methylFraction    --identify m6A,m4C   --paramsPath /home/xsq/software/smrtanalysis/current/analysis/etc/algorithm_parameters/2015-11/kineticsTools  --numWorkers 15 --summary_h5 /home/data1/pacbio/smrt666/data/temp_pltd.h5 --gff /home/data1/pacbio/smrt666/data/Pltd.gff --csv /home/data1/pacbio/smrt666/data/Pltd.csv --reference /home/xsq/ly/project_6ma/data/arabidopsis/genome/Tair10/Tair10/sequence/Tair10.fasta  /home/data1/pacbio/smrt666/data/Pltd.cmp.h5 || exit











# /usr/bin/bash
source /home/xsq/software/smrtanalysis/current/etc/setup.sh
cmph5tools.py select --where "(Reference=='NC_003070.9 Arabidopsis thaliana chromosome 1 sequence')" --outFile chr1.cmp.h5 aligned_reads.cmp.h5
cmph5tools.py select --where "(Reference=='NC_003071.7 Arabidopsis thaliana chromosome 2 sequence')" --outFile chr2.cmp.h5 aligned_reads.cmp.h5
cmph5tools.py select --where "(Reference=='NC_003074.8 Arabidopsis thaliana chromosome 3 sequence')" --outFile chr3.cmp.h5 aligned_reads.cmp.h5
cmph5tools.py select --where "(Reference=='NC_003075.7 Arabidopsis thaliana chromosome 4 sequence')" --outFile chr4.cmp.h5 aligned_reads.cmp.h5
cmph5tools.py select --where "(Reference=='NC_003076.8 Arabidopsis thaliana chromosome 5 sequence')" --outFile chr5.cmp.h5 aligned_reads.cmp.h5
cmph5tools.py select --where "(Reference=='NC_037304.1 Arabidopsis thaliana ecotype Col-0 mitochondrion, complete genome')" --outFile MT.cmp.h5 aligned_reads.cmp.h5



awk -F" " '{if ($0~/^>/){b=substr($1,2);a[b]=0}else{a[b]+=length($0)}}END{for(i in a)print(i,a[i])}' merge.fa








