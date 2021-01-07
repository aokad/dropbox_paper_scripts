#!/bin/bash -x
#$ -S /bin/bash
#$ -cwd
#$ -o /home/aiokada/sandbox/nanopore/log/COLO829BL_chr22
#$ -e /home/aiokada/sandbox/nanopore/log/COLO829BL_chr22
#$ -l s_vmem=30G,mem_req=30G
#$ -pe def_slot 4
#$ -q '!mjobs_rerun.q'

singularity exec  \
/home/aiokada/sandbox/nanopore/image/medaka-20201224-cpu.simg \
/bin/bash /home/aiokada/sandbox/nanopore/script/common/medaka_cpu_split_t4.sh \
/home/aiokada/sandbox/nanopore/minimap2/COLO829BL/COLO829BL.bam \
/home/aiokada/sandbox/nanopore/medaka_cpu_t3/COLO829BL_chr22 \
/home/aiokada/sandbox/nanopore/log/COLO829BL_chr22 \
chr22
