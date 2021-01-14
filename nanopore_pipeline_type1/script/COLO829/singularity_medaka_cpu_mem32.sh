#!/bin/bash -x
#$ -S /bin/bash
#$ -cwd
#$ -o /home/aiokada/sandbox/nanopore/log/COLO829
#$ -e /home/aiokada/sandbox/nanopore/log/COLO829
#$ -l s_vmem=32G,mem_req=32G
#$ -pe def_slot 2
#$ -l ljob

singularity exec  \
/home/aiokada/sandbox/nanopore/image/medaka-20201224-cpu.simg \
/bin/bash /home/aiokada/sandbox/nanopore/script/common/medaka_cpu.sh \
/home/aiokada/sandbox/nanopore/minimap2/COLO829/COLO829.bam \
/home/aiokada/sandbox/nanopore/medaka_cpu_mem32/COLO829 \
/home/aiokada/sandbox/nanopore/log/COLO829

