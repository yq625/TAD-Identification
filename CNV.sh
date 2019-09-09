#Combine all .sorted.bam into one:
samtools merge N2_all.sorted.bam *.sorted.bam
samtools index N2_all.sorted.bam
module load deeptools/3.0.2
bamCoverage -b N2_all.sorted.bam -o HiC_coverage_200b.bedgraph \
-bs 200 --outFileFormat bedgraph
