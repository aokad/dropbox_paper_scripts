#!/bin/bash -x
#$ -S /bin/bash
#$ -cwd
#$ -l v100=1
#$ -o /home/aiokada/sandbox/nanopore/log/HG002
#$ -e /home/aiokada/sandbox/nanopore/log/HG002
#$ -l s_vmem=100G,mem_req=100G
#$ -pe def_slot 2

bash /home/aiokada/sandbox/nanopore/script/common/medaka.sh \
/home/aiokada/sandbox/nanopore/minimap2/HG002/HG002.bam \
/home/aiokada/sandbox/nanopore/medaka/HG002 \
/home/aiokada/sandbox/nanopore/log/HG002

