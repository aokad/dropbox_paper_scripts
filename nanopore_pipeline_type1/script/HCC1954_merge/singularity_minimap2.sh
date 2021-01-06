#!/bin/bash -x
#$ -S /bin/bash
#$ -cwd
#$ -o /home/aiokada/sandbox/nanopore/log/HCC1954_merge
#$ -e /home/aiokada/sandbox/nanopore/log/HCC1954_merge
#$ -l s_vmem=250G,mem_req=250G

singularity exec  \
/home/aiokada/sandbox/nanopore/image/minimap2-2.17.simg \
/bin/bash /home/aiokada/sandbox/nanopore/script/common/minimap2.sh \
/home/aiokada/sandbox/nanopore/fastq/HCC1954_merge/HCC1954_pass.fastq.gz \
/home/aiokada/sandbox/nanopore/minimap2/HCC1954_merge/ \
HCC1954_merge \
/home/aiokada/work/simg/GRCh38.d1.vd1/GRCh38.d1.vd1.fa

