#!/bin/bash -x
#$ -S /bin/bash
#$ -cwd
#$ -o /home/aiokada/sandbox/nanopore/log/COLO829BL_chr22
#$ -e /home/aiokada/sandbox/nanopore/log/COLO829BL_chr22
#$ -l s_vmem=60G,mem_req=60G
#$ -q '!mjobs_rerun.q'

singularity exec  \
/home/aiokada/sandbox/nanopore/image/medaka-20201224-cpu.simg \
/bin/bash /home/aiokada/sandbox/nanopore/script/common/medaka_cpu_split_t1.sh \
/home/aiokada/sandbox/nanopore/minimap2/COLO829BL/COLO829BL.bam \
/home/aiokada/sandbox/nanopore/medaka_cpu_t1/COLO829BL_chr22 \
/home/aiokada/sandbox/nanopore/log/COLO829BL_chr22 \
chr22
