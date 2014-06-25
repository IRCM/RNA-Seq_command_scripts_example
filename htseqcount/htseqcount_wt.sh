#PBS -l walltime=10:00:00
#PBS -j oe
#PBS -V
#PBS -A afb-431-ac

cd $PBS_O_WORKDIR

samtools sort -n /sb/project/afb-431/BIF/VEI/VEI-BIF-P5/results/tophat/wt/accepted_hits.bam /sb/project/afb-431/BIF/VEI/VEI-BIF-P5/results/tophat/wt/accepted_hits_sorted_by_read_name \
&> htseqcount_wt.sh.log

samtools view /sb/project/afb-431/BIF/VEI/VEI-BIF-P5/results/tophat/wt/accepted_hits_sorted_by_read_name.bam | htseq-count \
--stranded=reverse --minaqual 1 --mode=intersection-strict - \
/sb/project/afb-431/genomes//Mus_musculus/Ensembl/GRCm38/Annotation/Genes/Mus_musculus.GRCm38.75.gtf \
1> /sb/project/afb-431/BIF/VEI/VEI-BIF-P5/results/htseqcount/wt.txt \
2>> htseqcount_wt.sh.log

rm /sb/project/afb-431/BIF/VEI/VEI-BIF-P5/results/tophat/wt/accepted_hits_sorted_by_read_name.bam \
&>> htseqcount_wt.sh.log