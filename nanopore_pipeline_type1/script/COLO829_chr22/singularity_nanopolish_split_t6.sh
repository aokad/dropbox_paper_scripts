#!/bin/bash -x
#$ -S /bin/bash
#$ -cwd
#$ -o /home/aiokada/sandbox/nanopore/log/COLO829_chr22
#$ -e /home/aiokada/sandbox/nanopore/log/COLO829_chr22
#$ -l s_vmem=1G,mem_req=1G
#$ -pe def_slot 6
#$ -l ljob

THREAD=6

singularity exec \
--bind /home/kchiba/work_directory/work_nanopore/output/guppy3.4.5 \
/home/kchiba/work_directory/work_nanopore/image/nanopolish-latest.simg \
/bin/bash /home/aiokada/sandbox/nanopore/script/common/nanopolish_split_t.sh \
/home/kchiba/work_directory/work_nanopore/output/guppy3.4.5/COLO829/ \
/home/kchiba/work_directory/work_nanopore/output/guppy3.4.5/COLO829/COLO829_pass.fastq.gz \
/home/aiokada/sandbox/nanopore/minimap2/COLO829/COLO829.bam \
/home/aiokada/sandbox/nanopore/nanopolish/COLO829_chr22/t${THREAD} \
/home/aiokada/work/simg/GRCh38.d1.vd1/GRCh38.d1.vd1.fa \
chr22 \
${THREAD}
