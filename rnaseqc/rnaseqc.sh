#PBS -l nodes=1:ppn=3
#PBS -l walltime=12:00:00
#PBS -j oe
#PBS -V
#PBS -A afb-431-ac

cd $PBS_O_WORKDIR

java -jar /software/areas/ircm/tools/RNA-SeQC_v1.1.7.jar \
-o /sb/project/afb-431/BIF/VEI/VEI-BIF-P5/results/rnaseqc \
-r /sb/project/afb-431/genomes//Mus_musculus/Ensembl/GRCm38/Sequence/WholeGenomeFasta/genome.fa \
-t /sb/project/afb-431/genomes//Mus_musculus/Ensembl/GRCm38/Annotation/Genes/genes.gtf \
-s sampleFile.txt \
&> rnaseqc.sh.log
