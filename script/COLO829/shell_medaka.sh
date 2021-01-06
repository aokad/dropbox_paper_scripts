#!/bin/bash -x
#$ -S /bin/bash
#$ -cwd
#$ -l v100=1
#$ -o /home/aiokada/sandbox/nanopore/log/COLO829
#$ -e /home/aiokada/sandbox/nanopore/log/COLO829
#$ -l s_vmem=100G,mem_req=100G
#$ -pe def_slot 2

bash /home/aiokada/sandbox/nanopore/script/common/medaka.sh \
/home/aiokada/sandbox/nanopore/minimap2/COLO829/COLO829.bam \
/home/aiokada/sandbox/nanopore/medaka/COLO829 \
/home/aiokada/sandbox/nanopore/log/COLO829

