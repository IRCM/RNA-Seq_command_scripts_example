#PBS -l nodes=1:ppn=3
#PBS -j oe
#PBS -V
#PBS -A afb-431-ac

cd $PBS_O_WORKDIR

java -jar /software/areas/ircm/tools/picard-tools-1.114/ReorderSam.jar \
I=/sb/project/afb-431/BIF/VEI/VEI-BIF-P5/results/tophat/ko/accepted_hits.bam \
OUTPUT=/sb/project/afb-431/BIF/VEI/VEI-BIF-P5/results/tophat/ko/ko_picard_sorted_accepted_hits.bam \
REFERENCE=/sb/project/afb-431/genomes//Mus_musculus/Ensembl/GRCm38/Sequence/WholeGenomeFasta/genome.fa \
&> reorder_index_ko.sh.log

samtools index /sb/project/afb-431/BIF/VEI/VEI-BIF-P5/results/tophat/ko/ko_picard_sorted_accepted_hits.bam \
&>> reorder_index_ko.sh.log