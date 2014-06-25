#PBS -j oe
#PBS -V
#PBS -A afb-431-ac

cd $PBS_O_WORKDIR

bedtools genomecov \
-bg \
-g /sb/project/afb-431/genomes//Mus_musculus/Ensembl/GRCm38/Annotation/Genes/ChromInfo.txt \
-ibam /sb/project/afb-431/BIF/VEI/VEI-BIF-P5/results/tophat/wt \
1> ../../results/bedgraph/wt.bedgraph \
2> bamtobigwig_wt.sh.log

sed -i 's,^,chr,g' ../../results/bedgraph/wt.bedgraph
sed -i 's,chrMT,chrM,g' ../../results/bedgraph/wt.bedgraph

bedGraphToBigWig \
../../results/bedgraph/wt.bedgraph \
/sb/project/afb-431/genomes//Mus_musculus/Ensembl/GRCm38/Annotation/Genes/UCSCChromInfo.txt \
/sb/project/afb-431/BIF/VEI/VEI-BIF-P5/results/bigwig/wt.bw \
&>> bamtobigwig_wt.sh.log