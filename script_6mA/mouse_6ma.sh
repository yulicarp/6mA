#!/bin/bash
source /home/xsq/software/smrtanalysis/current/etc/setup.sh
#bash filter_002of020.sh && bash filter_003of020.sh && bash filter_004of020.sh && bash filter_005of020.sh && bash filter_006of020.sh && bash filter_007of020.sh && bash filter_008of020.sh && bash filter_009of020.sh && bash filter_010of020.sh && bash filter_011of020.sh && bash filter_012of020.sh && bash filter_013of020.sh && bash filter_014of020.sh && bash filter_015of020.sh && bash filter_016of020.sh && bash filter_017of020.sh && bash filter_018of020.sh && bash filter_019of020.sh && bash filter_020of020.sh
# align Task 1
pbalign "/home/data1/pacbio/mouse_smrt/input.chunk001of020.fofn" "/home/xsq/ly/project_6ma/data/mouse/genome/GRC38/GRC38" "/home/data1/pacbio/mouse_smrt/data/aligned_reads_1.cmp.h5" --seed=1 --minAccuracy=0.75 --minLength=50 --concordant --algorithmOptions="-useQuality" --algorithmOptions=' -minMatch 12 -bestn 10 -minPctIdentity 70.0 -sa /home/xsq/ly/project_6ma/data/mouse/genome/GRC38/GRC38/sequence/GRC38.fasta.sa' --hitPolicy=randombest --tmpDir=/home/data3/tmp --nproc=20 --regionTable=/home/data1/pacbio/mouse_smrt/data/filtered_regions.chunk001of020.fofn || exit $?
# align Task 2
pbalign "/home/data1/pacbio/mouse_smrt/input.chunk002of020.fofn" "/home/xsq/ly/project_6ma/data/mouse/genome/GRC38/GRC38" "/home/data1/pacbio/mouse_smrt/data/aligned_reads_2.cmp.h5" --seed=1 --minAccuracy=0.75 --minLength=50 --concordant --algorithmOptions="-useQuality" --algorithmOptions=' -minMatch 12 -bestn 10 -minPctIdentity 70.0 -sa /home/xsq/ly/project_6ma/data/mouse/genome/GRC38/GRC38/sequence/GRC38.fasta.sa' --hitPolicy=randombest --tmpDir=/home/data3/tmp --nproc=20 --regionTable=/home/data1/pacbio/mouse_smrt/data/filtered_regions.chunk002of020.fofn || exit $?
# align Task 3
pbalign "/home/data1/pacbio/mouse_smrt/input.chunk003of020.fofn" "/home/xsq/ly/project_6ma/data/mouse/genome/GRC38/GRC38" "/home/data1/pacbio/mouse_smrt/data/aligned_reads_3.cmp.h5" --seed=1 --minAccuracy=0.75 --minLength=50 --concordant --algorithmOptions="-useQuality" --algorithmOptions=' -minMatch 12 -bestn 10 -minPctIdentity 70.0 -sa /home/xsq/ly/project_6ma/data/mouse/genome/GRC38/GRC38/sequence/GRC38.fasta.sa' --hitPolicy=randombest --tmpDir=/home/data3/tmp --nproc=20 --regionTable=/home/data1/pacbio/mouse_smrt/data/filtered_regions.chunk003of020.fofn || exit $?
# align Task 4
pbalign "/home/data1/pacbio/mouse_smrt/input.chunk004of020.fofn" "/home/xsq/ly/project_6ma/data/mouse/genome/GRC38/GRC38" "/home/data1/pacbio/mouse_smrt/data/aligned_reads_4.cmp.h5" --seed=1 --minAccuracy=0.75 --minLength=50 --concordant --algorithmOptions="-useQuality" --algorithmOptions=' -minMatch 12 -bestn 10 -minPctIdentity 70.0 -sa /home/xsq/ly/project_6ma/data/mouse/genome/GRC38/GRC38/sequence/GRC38.fasta.sa' --hitPolicy=randombest --tmpDir=/home/data3/tmp --nproc=20 --regionTable=/home/data1/pacbio/mouse_smrt/data/filtered_regions.chunk004of020.fofn || exit $?
# align Task 5
pbalign "/home/data1/pacbio/mouse_smrt/input.chunk005of020.fofn" "/home/xsq/ly/project_6ma/data/mouse/genome/GRC38/GRC38" "/home/data1/pacbio/mouse_smrt/data/aligned_reads_5.cmp.h5" --seed=1 --minAccuracy=0.75 --minLength=50 --concordant --algorithmOptions="-useQuality" --algorithmOptions=' -minMatch 12 -bestn 10 -minPctIdentity 70.0 -sa /home/xsq/ly/project_6ma/data/mouse/genome/GRC38/GRC38/sequence/GRC38.fasta.sa' --hitPolicy=randombest --tmpDir=/home/data3/tmp --nproc=20 --regionTable=/home/data1/pacbio/mouse_smrt/data/filtered_regions.chunk005of020.fofn || exit $?
# align Task 6
pbalign "/home/data1/pacbio/mouse_smrt/input.chunk006of020.fofn" "/home/xsq/ly/project_6ma/data/mouse/genome/GRC38/GRC38" "/home/data1/pacbio/mouse_smrt/data/aligned_reads_6.cmp.h5" --seed=1 --minAccuracy=0.75 --minLength=50 --concordant --algorithmOptions="-useQuality" --algorithmOptions=' -minMatch 12 -bestn 10 -minPctIdentity 70.0 -sa /home/xsq/ly/project_6ma/data/mouse/genome/GRC38/GRC38/sequence/GRC38.fasta.sa' --hitPolicy=randombest --tmpDir=/home/data3/tmp --nproc=20 --regionTable=/home/data1/pacbio/mouse_smrt/data/filtered_regions.chunk006of020.fofn || exit $?
# align Task 7
pbalign "/home/data1/pacbio/mouse_smrt/input.chunk007of020.fofn" "/home/xsq/ly/project_6ma/data/mouse/genome/GRC38/GRC38" "/home/data1/pacbio/mouse_smrt/data/aligned_reads_7.cmp.h5" --seed=1 --minAccuracy=0.75 --minLength=50 --concordant --algorithmOptions="-useQuality" --algorithmOptions=' -minMatch 12 -bestn 10 -minPctIdentity 70.0 -sa /home/xsq/ly/project_6ma/data/mouse/genome/GRC38/GRC38/sequence/GRC38.fasta.sa' --hitPolicy=randombest --tmpDir=/home/data3/tmp --nproc=20 --regionTable=/home/data1/pacbio/mouse_smrt/data/filtered_regions.chunk007of020.fofn || exit $?
# align Task 8
pbalign "/home/data1/pacbio/mouse_smrt/input.chunk008of020.fofn" "/home/xsq/ly/project_6ma/data/mouse/genome/GRC38/GRC38" "/home/data1/pacbio/mouse_smrt/data/aligned_reads_8.cmp.h5" --seed=1 --minAccuracy=0.75 --minLength=50 --concordant --algorithmOptions="-useQuality" --algorithmOptions=' -minMatch 12 -bestn 10 -minPctIdentity 70.0 -sa /home/xsq/ly/project_6ma/data/mouse/genome/GRC38/GRC38/sequence/GRC38.fasta.sa' --hitPolicy=randombest --tmpDir=/home/data3/tmp --nproc=20 --regionTable=/home/data1/pacbio/mouse_smrt/data/filtered_regions.chunk008of020.fofn || exit $?
# align Task 9
pbalign "/home/data1/pacbio/mouse_smrt/input.chunk009of020.fofn" "/home/xsq/ly/project_6ma/data/mouse/genome/GRC38/GRC38" "/home/data1/pacbio/mouse_smrt/data/aligned_reads_9.cmp.h5" --seed=1 --minAccuracy=0.75 --minLength=50 --concordant --algorithmOptions="-useQuality" --algorithmOptions=' -minMatch 12 -bestn 10 -minPctIdentity 70.0 -sa /home/xsq/ly/project_6ma/data/mouse/genome/GRC38/GRC38/sequence/GRC38.fasta.sa' --hitPolicy=randombest --tmpDir=/home/data3/tmp --nproc=20 --regionTable=/home/data1/pacbio/mouse_smrt/data/filtered_regions.chunk009of020.fofn || exit $?
# align Task 10
pbalign "/home/data1/pacbio/mouse_smrt/input.chunk010of020.fofn" "/home/xsq/ly/project_6ma/data/mouse/genome/GRC38/GRC38" "/home/data1/pacbio/mouse_smrt/data/aligned_reads_10.cmp.h5" --seed=1 --minAccuracy=0.75 --minLength=50 --concordant --algorithmOptions="-useQuality" --algorithmOptions=' -minMatch 12 -bestn 10 -minPctIdentity 70.0 -sa /home/xsq/ly/project_6ma/data/mouse/genome/GRC38/GRC38/sequence/GRC38.fasta.sa' --hitPolicy=randombest --tmpDir=/home/data3/tmp --nproc=20 --regionTable=/home/data1/pacbio/mouse_smrt/data/filtered_regions.chunk010of020.fofn || exit $?
# align Task 11
pbalign "/home/data1/pacbio/mouse_smrt/input.chunk011of020.fofn" "/home/xsq/ly/project_6ma/data/mouse/genome/GRC38/GRC38" "/home/data1/pacbio/mouse_smrt/data/aligned_reads_11.cmp.h5" --seed=1 --minAccuracy=0.75 --minLength=50 --concordant --algorithmOptions="-useQuality" --algorithmOptions=' -minMatch 12 -bestn 10 -minPctIdentity 70.0 -sa /home/xsq/ly/project_6ma/data/mouse/genome/GRC38/GRC38/sequence/GRC38.fasta.sa' --hitPolicy=randombest --tmpDir=/home/data3/tmp --nproc=20 --regionTable=/home/data1/pacbio/mouse_smrt/data/filtered_regions.chunk011of020.fofn || exit $?
# align Task 12
pbalign "/home/data1/pacbio/mouse_smrt/input.chunk012of020.fofn" "/home/xsq/ly/project_6ma/data/mouse/genome/GRC38/GRC38" "/home/data1/pacbio/mouse_smrt/data/aligned_reads_12.cmp.h5" --seed=1 --minAccuracy=0.75 --minLength=50 --concordant --algorithmOptions="-useQuality" --algorithmOptions=' -minMatch 12 -bestn 10 -minPctIdentity 70.0 -sa /home/xsq/ly/project_6ma/data/mouse/genome/GRC38/GRC38/sequence/GRC38.fasta.sa' --hitPolicy=randombest --tmpDir=/home/data3/tmp --nproc=20 --regionTable=/home/data1/pacbio/mouse_smrt/data/filtered_regions.chunk012of020.fofn || exit $?
# align Task 13
pbalign "/home/data1/pacbio/mouse_smrt/input.chunk013of020.fofn" "/home/xsq/ly/project_6ma/data/mouse/genome/GRC38/GRC38" "/home/data1/pacbio/mouse_smrt/data/aligned_reads_13.cmp.h5" --seed=1 --minAccuracy=0.75 --minLength=50 --concordant --algorithmOptions="-useQuality" --algorithmOptions=' -minMatch 12 -bestn 10 -minPctIdentity 70.0 -sa /home/xsq/ly/project_6ma/data/mouse/genome/GRC38/GRC38/sequence/GRC38.fasta.sa' --hitPolicy=randombest --tmpDir=/home/data3/tmp --nproc=20 --regionTable=/home/data1/pacbio/mouse_smrt/data/filtered_regions.chunk013of020.fofn || exit $?
# align Task 14
pbalign "/home/data1/pacbio/mouse_smrt/input.chunk014of020.fofn" "/home/xsq/ly/project_6ma/data/mouse/genome/GRC38/GRC38" "/home/data1/pacbio/mouse_smrt/data/aligned_reads_14.cmp.h5" --seed=1 --minAccuracy=0.75 --minLength=50 --concordant --algorithmOptions="-useQuality" --algorithmOptions=' -minMatch 12 -bestn 10 -minPctIdentity 70.0 -sa /home/xsq/ly/project_6ma/data/mouse/genome/GRC38/GRC38/sequence/GRC38.fasta.sa' --hitPolicy=randombest --tmpDir=/home/data3/tmp --nproc=20 --regionTable=/home/data1/pacbio/mouse_smrt/data/filtered_regions.chunk014of020.fofn || exit $?
# align Task 15
pbalign "/home/data1/pacbio/mouse_smrt/input.chunk015of020.fofn" "/home/xsq/ly/project_6ma/data/mouse/genome/GRC38/GRC38" "/home/data1/pacbio/mouse_smrt/data/aligned_reads_15.cmp.h5" --seed=1 --minAccuracy=0.75 --minLength=50 --concordant --algorithmOptions="-useQuality" --algorithmOptions=' -minMatch 12 -bestn 10 -minPctIdentity 70.0 -sa /home/xsq/ly/project_6ma/data/mouse/genome/GRC38/GRC38/sequence/GRC38.fasta.sa' --hitPolicy=randombest --tmpDir=/home/data3/tmp --nproc=20 --regionTable=/home/data1/pacbio/mouse_smrt/data/filtered_regions.chunk015of020.fofn || exit $?
# align Task 16
pbalign "/home/data1/pacbio/mouse_smrt/input.chunk016of020.fofn" "/home/xsq/ly/project_6ma/data/mouse/genome/GRC38/GRC38" "/home/data1/pacbio/mouse_smrt/data/aligned_reads_16.cmp.h5" --seed=1 --minAccuracy=0.75 --minLength=50 --concordant --algorithmOptions="-useQuality" --algorithmOptions=' -minMatch 12 -bestn 10 -minPctIdentity 70.0 -sa /home/xsq/ly/project_6ma/data/mouse/genome/GRC38/GRC38/sequence/GRC38.fasta.sa' --hitPolicy=randombest --tmpDir=/home/data3/tmp --nproc=20 --regionTable=/home/data1/pacbio/mouse_smrt/data/filtered_regions.chunk016of020.fofn || exit $?
# align Task 17
pbalign "/home/data1/pacbio/mouse_smrt/input.chunk017of020.fofn" "/home/xsq/ly/project_6ma/data/mouse/genome/GRC38/GRC38" "/home/data1/pacbio/mouse_smrt/data/aligned_reads_17.cmp.h5" --seed=1 --minAccuracy=0.75 --minLength=50 --concordant --algorithmOptions="-useQuality" --algorithmOptions=' -minMatch 12 -bestn 10 -minPctIdentity 70.0 -sa /home/xsq/ly/project_6ma/data/mouse/genome/GRC38/GRC38/sequence/GRC38.fasta.sa' --hitPolicy=randombest --tmpDir=/home/data3/tmp --nproc=20 --regionTable=/home/data1/pacbio/mouse_smrt/data/filtered_regions.chunk017of020.fofn || exit $?
# align Task 18
pbalign "/home/data1/pacbio/mouse_smrt/input.chunk018of020.fofn" "/home/xsq/ly/project_6ma/data/mouse/genome/GRC38/GRC38" "/home/data1/pacbio/mouse_smrt/data/aligned_reads_18.cmp.h5" --seed=1 --minAccuracy=0.75 --minLength=50 --concordant --algorithmOptions="-useQuality" --algorithmOptions=' -minMatch 12 -bestn 10 -minPctIdentity 70.0 -sa /home/xsq/ly/project_6ma/data/mouse/genome/GRC38/GRC38/sequence/GRC38.fasta.sa' --hitPolicy=randombest --tmpDir=/home/data3/tmp --nproc=20 --regionTable=/home/data1/pacbio/mouse_smrt/data/filtered_regions.chunk018of020.fofn || exit $?
# align Task 19
pbalign "/home/data1/pacbio/mouse_smrt/input.chunk019of020.fofn" "/home/xsq/ly/project_6ma/data/mouse/genome/GRC38/GRC38" "/home/data1/pacbio/mouse_smrt/data/aligned_reads_19.cmp.h5" --seed=1 --minAccuracy=0.75 --minLength=50 --concordant --algorithmOptions="-useQuality" --algorithmOptions=' -minMatch 12 -bestn 10 -minPctIdentity 70.0 -sa /home/xsq/ly/project_6ma/data/mouse/genome/GRC38/GRC38/sequence/GRC38.fasta.sa' --hitPolicy=randombest --tmpDir=/home/data3/tmp --nproc=20 --regionTable=/home/data1/pacbio/mouse_smrt/data/filtered_regions.chunk019of020.fofn || exit $?
# align Task 20
pbalign "/home/data1/pacbio/mouse_smrt/input.chunk020of020.fofn" "/home/xsq/ly/project_6ma/data/mouse/genome/GRC38/GRC38" "/home/data1/pacbio/mouse_smrt/data/aligned_reads_20.cmp.h5" --seed=1 --minAccuracy=0.75 --minLength=50 --concordant --algorithmOptions="-useQuality" --algorithmOptions=' -minMatch 12 -bestn 10 -minPctIdentity 70.0 -sa /home/xsq/ly/project_6ma/data/mouse/genome/GRC38/GRC38/sequence/GRC38.fasta.sa' --hitPolicy=randombest --tmpDir=/home/data3/tmp --nproc=20 --regionTable=/home/data1/pacbio/mouse_smrt/data/filtered_regions.chunk020of020.fofn || exit $?
#merge
#cmph5tools.py merge --outFile aligned_reads.cmp.h5 aligned_reads_1.cmp.h5 aligned_reads_2.cmp.h5 aligned_reads_3.cmp.h5 aligned_reads_4.cmp.h5 aligned_reads_5.cmp.h5 aligned_reads_6.cmp.h5 aligned_reads_7.cmp.h5 aligned_reads_8.cmp.h5 aligned_reads_9.cmp.h5 aligned_reads_10.cmp.h5 aligned_reads_11.cmp.h5 aligned_reads_12.cmp.h5 aligned_reads_13.cmp.h5 aligned_reads_14.cmp.h5 aligned_reads_15.cmp.h5 aligned_reads_16.cmp.h5 aligned_reads_17.cmp.h5 aligned_reads_18.cmp.h5 aligned_reads_19.cmp.h5 aligned_reads_20.cmp.h5
#align Task2
#loadChemistry.py /home/data1/pacbio/mouse_smrt/input.fofn /home/data1/pacbio/mouse_smrt/data/aligned_reads.cmp.h5 && loadPulses /home/data1/pacbio/mouse_smrt/input.fofn /home/data1/pacbio/mouse_smrt/data/aligned_reads.cmp.h5 -metrics DeletionQV,IPD,InsertionQV,PulseWidth,QualityValue,MergeQV,SubstitutionQV,DeletionTag -byread || exit $?























