#!/bin/bash -x
#$ -S /bin/bash
#$ -cwd
#$ -o /home/aiokada/sandbox/nanopore/log/HG002
#$ -e /home/aiokada/sandbox/nanopore/log/HG002
#$ -l s_vmem=250G,mem_req=250G

singularity exec  \
/home/aiokada/sandbox/nanopore/image/minimap2-2.17.simg \
/bin/bash /home/aiokada/sandbox/nanopore/script/common/minimap2.sh \
/home/aiokada/sandbox/nanopore/fastq/HG002/HG002_ONT-UL_GIAB_20200122.fastq.gz \
/home/aiokada/sandbox/nanopore/minimap2/HG002/ \
HG002 \
/home/aiokada/work/simg/GRCh38.d1.vd1/GRCh38.d1.vd1.fa

