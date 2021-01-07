#!/bin/bash -x
#$ -S /bin/bash
#$ -cwd
#$ -o /home/aiokada/sandbox/nanopore/log/COLO829_chr22
#$ -e /home/aiokada/sandbox/nanopore/log/COLO829_chr22
#$ -l s_vmem=30G,mem_req=30G
#$ -pe def_slot 2
#$ -q '!mjobs_rerun.q'

singularity exec  \
/home/aiokada/sandbox/nanopore/image/medaka-20201224-cpu.simg \
/bin/bash /home/aiokada/sandbox/nanopore/script/common/medaka_cpu_split.sh \
/home/aiokada/sandbox/nanopore/minimap2/COLO829/COLO829.bam \
/home/aiokada/sandbox/nanopore/medaka_cpu_t2/COLO829_chr22 \
/home/aiokada/sandbox/nanopore/log/COLO829_chr22 \
chr22
