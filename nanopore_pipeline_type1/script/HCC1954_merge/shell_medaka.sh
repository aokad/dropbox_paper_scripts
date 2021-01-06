#!/bin/bash -x
#$ -S /bin/bash
#$ -cwd
#$ -l v100=1
#$ -o /home/aiokada/sandbox/nanopore/log/HCC1954_merge
#$ -e /home/aiokada/sandbox/nanopore/log/HCC1954_merge
#$ -l s_vmem=100G,mem_req=100G
#$ -pe def_slot 2

bash /home/aiokada/sandbox/nanopore/script/common/medaka.sh \
/home/aiokada/sandbox/nanopore/minimap2/HCC1954_merge/HCC1954_merge.bam \
/home/aiokada/sandbox/nanopore/medaka/HCC1954_merge \
/home/aiokada/sandbox/nanopore/log/HCC1954_merge

