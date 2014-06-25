#PBS -j oe
#PBS -V
#PBS -A afb-431-ac

cd $PBS_O_WORKDIR

bedtools genomecov \
-bg \
-g /sb/project/afb-431/genomes//Mus_musculus/Ensembl/GRCm38/Annotation/Genes/ChromInfo.txt \
-ibam /sb/project/afb-431/BIF/VEI/VEI-BIF-P5/results/tophat/ko \
1> ../../results/bedgraph/ko.bedgraph \
2> bamtobigwig_ko.sh.log

sed -i 's,^,chr,g' ../../results/bedgraph/ko.bedgraph
sed -i 's,chrMT,chrM,g' ../../results/bedgraph/ko.bedgraph

bedGraphToBigWig \
../../results/bedgraph/ko.bedgraph \
/sb/project/afb-431/genomes//Mus_musculus/Ensembl/GRCm38/Annotation/Genes/UCSCChromInfo.txt \
/sb/project/afb-431/BIF/VEI/VEI-BIF-P5/results/bigwig/ko.bw \
&>> bamtobigwig_ko.sh.log