#!/bin/bash -x
#$ -S /bin/bash
#$ -cwd
#$ -o /home/aiokada/sandbox/nanopore/log/COLO829
#$ -e /home/aiokada/sandbox/nanopore/log/COLO829
#$ -l s_vmem=250G,mem_req=250G

singularity exec  \
--bind /home/kchiba/work_directory/work_nanopore/output/guppy3.4.5 \
/home/aiokada/sandbox/nanopore/image/minimap2-2.17.simg \
/bin/bash /home/aiokada/sandbox/nanopore/script/common/minimap2.sh \
/home/kchiba/work_directory/work_nanopore/output/guppy3.4.5/COLO829/COLO829_pass.fastq.gz \
/home/aiokada/sandbox/nanopore/minimap2/COLO829/ \
COLO829 \
/home/aiokada/work/simg/GRCh38.d1.vd1/GRCh38.d1.vd1.fa

