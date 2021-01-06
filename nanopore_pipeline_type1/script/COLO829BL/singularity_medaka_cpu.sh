#!/bin/bash -x
#$ -S /bin/bash
#$ -cwd
#$ -o /home/aiokada/sandbox/nanopore/log/COLO829BL
#$ -e /home/aiokada/sandbox/nanopore/log/COLO829BL
#$ -l s_vmem=100G,mem_req=100G
#$ -pe def_slot 2
#$ -l ljob

singularity exec  \
/home/aiokada/sandbox/nanopore/image/medaka-20201224-cpu.simg \
/bin/bash /home/aiokada/sandbox/nanopore/script/common/medaka_cpu.sh \
/home/aiokada/sandbox/nanopore/minimap2/COLO829BL/COLO829BL.bam \
/home/aiokada/sandbox/nanopore/medaka_cpu/COLO829BL \
/home/aiokada/sandbox/nanopore/log/COLO829BL

