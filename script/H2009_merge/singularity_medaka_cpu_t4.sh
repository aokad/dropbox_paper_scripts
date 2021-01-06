#!/bin/bash -x
#$ -S /bin/bash
#$ -cwd
#$ -o /home/aiokada/sandbox/nanopore/log/H2009_merge
#$ -e /home/aiokada/sandbox/nanopore/log/H2009_merge
#$ -l s_vmem=50G,mem_req=50G
#$ -pe def_slot 4
#$ -l ljob

singularity exec  \
/home/aiokada/sandbox/nanopore/image/medaka-20201224-cpu.simg \
/bin/bash /home/aiokada/sandbox/nanopore/script/common/medaka_cpu_t4.sh \
/home/aiokada/sandbox/nanopore/minimap2/H2009_merge/H2009_merge.bam \
/home/aiokada/sandbox/nanopore/medaka_cpu_t4/H2009_merge \
/home/aiokada/sandbox/nanopore/log/H2009_merge

