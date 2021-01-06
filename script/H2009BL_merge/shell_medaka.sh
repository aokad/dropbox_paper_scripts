#!/bin/bash -x
#$ -S /bin/bash
#$ -cwd
#$ -l v100=1
#$ -o /home/aiokada/sandbox/nanopore/log/H2009BL_merge
#$ -e /home/aiokada/sandbox/nanopore/log/H2009BL_merge
#$ -l s_vmem=100G,mem_req=100G
#$ -pe def_slot 2

bash /home/aiokada/sandbox/nanopore/script/common/medaka.sh \
/home/aiokada/sandbox/nanopore/minimap2/H2009BL_merge/H2009BL_merge.bam \
/home/aiokada/sandbox/nanopore/medaka/H2009BL_merge \
/home/aiokada/sandbox/nanopore/log/H2009BL_merge

