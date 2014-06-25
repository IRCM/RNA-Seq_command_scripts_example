#PBS -j oe
#PBS -V
#PBS -A afb-431-ac

cd $PBS_O_WORKDIR

samtools sort -n /sb/project/afb-431/BIF/VEI/VEI-BIF-P5/data/BAM_files/HI.1774.008.Index_6.JL_wt.bam \
/sb/project/afb-431/BIF/VEI/VEI-BIF-P5/data/BAM_files/HI.1774.008.Index_6.JL_wt_name_sorted \
&> bamtofastq_HI.1774.008.Index_6.JL_wt.sh.log

bedtools bamtofastq -i /sb/project/afb-431/BIF/VEI/VEI-BIF-P5/data/BAM_files/HI.1774.008.Index_6.JL_wt_name_sorted.bam \
-fq /sb/project/afb-431/BIF/VEI/VEI-BIF-P5/data/FASTQ_files/untrimmed/HI.1774.008.Index_6.JL_wt_R1.fastq \
-fq2 /sb/project/afb-431/BIF/VEI/VEI-BIF-P5/data/FASTQ_files/untrimmed/HI.1774.008.Index_6.JL_wt_R2.fastq \
&>> bamtofastq_HI.1774.008.Index_6.JL_wt.sh.log

gzip /sb/project/afb-431/BIF/VEI/VEI-BIF-P5/data/FASTQ_files/untrimmed/HI.1774.008.Index_6.JL_wt_R1.fastq \
$>> bamtofastq_HI.1774.008.Index_6.JL_wt.sh.log

gzip /sb/project/afb-431/BIF/VEI/VEI-BIF-P5/data/FASTQ_files/untrimmed/HI.1774.008.Index_6.JL_wt_R2.fastq \
&>> bamtofastq_HI.1774.008.Index_6.JL_wt.sh.log