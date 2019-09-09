#LASTZ aligner
lastz ce10.fa[multiple] Assemblies_Chips_114_115.contigs.fasta \
--format=sam > all_chr_lastz.sam
samtools view -b -o all_chr_lastz.bam all_chr_lastz.sam
samtools sort -o all_chr_lastz.sorted.bam all_chr_lastz.bam
samtools index all_chr_lastz.sorted.bam
module load bedtools/intel/2.27.1
bamToBed -i all_chr_lastz.sorted.bam > lastz.bed
