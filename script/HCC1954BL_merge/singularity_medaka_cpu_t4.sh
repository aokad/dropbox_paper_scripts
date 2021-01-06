#!/bin/bash -x
#$ -S /bin/bash
#$ -cwd
#$ -o /home/aiokada/sandbox/nanopore/log/HCC1954BL_merge
#$ -e /home/aiokada/sandbox/nanopore/log/HCC1954BL_merge
#$ -l s_vmem=50G,mem_req=50G
#$ -pe def_slot 4
#$ -l ljob

singularity exec  \
/home/aiokada/sandbox/nanopore/image/medaka-20201224-cpu.simg \
/bin/bash /home/aiokada/sandbox/nanopore/script/common/medaka_cpu_t4.sh \
/home/aiokada/sandbox/nanopore/minimap2/HCC1954BL_merge/HCC1954BL_merge.bam \
/home/aiokada/sandbox/nanopore/medaka_cpu_t4/HCC1954BL_merge \
/home/aiokada/sandbox/nanopore/log/HCC1954BL_merge

