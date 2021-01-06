#!/bin/bash -x
#$ -S /bin/bash
#$ -cwd
#$ -o /home/aiokada/sandbox/nanopore/log/H2009BL_merge
#$ -e /home/aiokada/sandbox/nanopore/log/H2009BL_merge
#$ -l s_vmem=250G,mem_req=250G

singularity exec  \
/home/aiokada/sandbox/nanopore/image/minimap2-2.17.simg \
/bin/bash /home/aiokada/sandbox/nanopore/script/common/minimap2.sh \
/home/aiokada/sandbox/nanopore/fastq/BL2009_merge/BL2009_pass.fastq.gz \
/home/aiokada/sandbox/nanopore/minimap2/H2009BL_merge/ \
H2009BL_merge \
/home/aiokada/work/simg/GRCh38.d1.vd1/GRCh38.d1.vd1.fa

