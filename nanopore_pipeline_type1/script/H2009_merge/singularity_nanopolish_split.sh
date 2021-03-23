#!/bin/bash -x
#$ -S /bin/bash
#$ -cwd
#$ -o /home/aiokada/sandbox/nanopore/log/H2009_merge
#$ -e /home/aiokada/sandbox/nanopore/log/H2009_merge
#$ -l s_vmem=2G,mem_req=2G
#$ -pe def_slot 6
#$ -l ljob

CHR=$1

singularity exec \
--bind /archive/data/hgc0361/kchiba/nanopore_20203/,/home/kchiba/work_directory/work_nanopore/output/guppy3.4.5,/archive/data/hgc0361/aiokada/sandbox/nanopore/minimap2 \
/home/kchiba/work_directory/work_nanopore/image/nanopolish-latest.simg \
/bin/bash /home/aiokada/sandbox/nanopore/script/common/nanopolish_split_t.sh \
/home/aiokada/sandbox/nanopore/fast5/H2009_merge/ \
/home/aiokada/sandbox/nanopore/fastq/H2009_merge/H2009_pass.fastq.gz \
/archive/data/hgc0361/aiokada/sandbox/nanopore/minimap2/H2009_merge/H2009_merge.bam \
/home/aiokada/sandbox/nanopore/nanopolish/H2009_merge/${CHR} \
/home/aiokada/work/simg/GRCh38.d1.vd1/GRCh38.d1.vd1.fa \
${CHR} \
6
