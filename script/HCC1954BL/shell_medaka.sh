#!/bin/bash -x
#$ -S /bin/bash
#$ -cwd
#$ -l v100=1
#$ -o /home/aiokada/sandbox/nanopore/log/HCC1954BL
#$ -e /home/aiokada/sandbox/nanopore/log/HCC1954BL
#$ -l s_vmem=100G,mem_req=100G
#$ -pe def_slot 2

bash /home/aiokada/sandbox/nanopore/script/common/medaka.sh \
/home/aiokada/sandbox/nanopore/minimap2/HCC1954BL/HCC1954BL.bam \
/home/aiokada/sandbox/nanopore/medaka/HCC1954BL \
/home/aiokada/sandbox/nanopore/log/HCC1954BL

