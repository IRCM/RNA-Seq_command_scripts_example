#PBS -l nodes=1:ppn=3
#PBS -l walltime=2:00:00:00
#PBS -j oe
#PBS -V
#PBS -A afb-431-ac

cd $PBS_O_WORKDIR

tophat \
--rg-library "L" --rg-platform "ILLUMINA" \
--rg-platform-unit "X" --rg-sample "ko" --rg-id "runX" \
--no-novel-juncs -p 3 \
--library-type fr-firststrand \
-G /sb/project/afb-431/genomes//Mus_musculus/Ensembl/GRCm38/Annotation/Genes/Mus_musculus.GRCm38.75.gtf \
-o /sb/project/afb-431/BIF/VEI/VEI-BIF-P5/results/tophat/ko \
/sb/project/afb-431/genomes//Mus_musculus/Ensembl/GRCm38/Sequence/Bowtie2Index/genome \
/sb/project/afb-431/BIF/VEI/VEI-BIF-P5/data/FASTQ_files/untrimmed/HI.1774.008.Index_12.JL_ko_R1.fastq \
/sb/project/afb-431/BIF/VEI/VEI-BIF-P5/data/FASTQ_files/untrimmed/HI.1774.008.Index_12.JL_ko_R2.fastq \
&> tophat_ko.sh.log