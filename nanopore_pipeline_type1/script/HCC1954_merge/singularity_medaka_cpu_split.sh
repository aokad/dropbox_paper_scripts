#!/bin/bash -x
#$ -S /bin/bash
#$ -cwd
#$ -o /home/aiokada/sandbox/nanopore/log/HCC1954_merge
#$ -e /home/aiokada/sandbox/nanopore/log/HCC1954_merge
#$ -l s_vmem=100G,mem_req=100G
#$ -pe def_slot 2
#$ -q '!mjobs_rerun.q'

CHR=$1

singularity exec  \
/home/aiokada/sandbox/nanopore/image/medaka-20201224-cpu.simg \
/bin/bash /home/aiokada/sandbox/nanopore/script/common/medaka_cpu_split.sh \
/home/aiokada/sandbox/nanopore/minimap2/HCC1954_merge/HCC1954_merge.bam \
/home/aiokada/sandbox/nanopore/medaka_cpu_split/HCC1954_merge \
/home/aiokada/sandbox/nanopore/log/HCC1954_merge \
${CHR}
