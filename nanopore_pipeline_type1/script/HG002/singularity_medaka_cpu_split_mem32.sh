#!/bin/bash -x
#$ -S /bin/bash
#$ -cwd
#$ -o /home/aiokada/sandbox/nanopore/log/HG002
#$ -e /home/aiokada/sandbox/nanopore/log/HG002
#$ -l s_vmem=16G,mem_req=16G
#$ -pe def_slot 2
#$ -q '!mjobs_rerun.q'

CHR=$1

singularity exec  \
/home/aiokada/sandbox/nanopore/image/medaka-20201224-cpu.simg \
/bin/bash /home/aiokada/sandbox/nanopore/script/common/medaka_cpu_split.sh \
/home/aiokada/sandbox/nanopore/minimap2/HG002/HG002.bam \
/home/aiokada/sandbox/nanopore/medaka_cpu_split_mem32/HG002 \
/home/aiokada/sandbox/nanopore/log/HG002 \
${CHR}
