#PBS -l nodes=1:ppn=4
#PBS -l walltime=2:00:00:00
#PBS -j oe
#PBS -V
#PBS -A afb-431-ac

cd $PBS_O_WORKDIR

cuffdiff \
--labels wt,ko \
-p 4 \
--library-type fr-firststrand \
-u -b /sb/project/afb-431/genomes//Mus_musculus/Ensembl/GRCm38/Sequence/WholeGenomeFasta/genome.fa \
-o /sb/project/afb-431/BIF/VEI/VEI-BIF-P5/results/cuffdiff \
/sb/project/afb-431/genomes//Mus_musculus/Ensembl/GRCm38/Annotation/Genes/Mus_musculus.GRCm38.75.gtf \
/sb/project/afb-431/BIF/VEI/VEI-BIF-P5/results/tophat/wt/accepted_hits.bam \
/sb/project/afb-431/BIF/VEI/VEI-BIF-P5/results/tophat/ko/accepted_hits.bam \
&> cuffdiff.sh.log