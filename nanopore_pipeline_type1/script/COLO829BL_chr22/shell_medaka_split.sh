#!/bin/bash -x
#$ -S /bin/bash
#$ -cwd
#$ -l v100=1
#$ -o /home/aiokada/sandbox/nanopore/log/COLO829BL_chr22
#$ -e /home/aiokada/sandbox/nanopore/log/COLO829BL_chr22
#$ -l s_vmem=30G,mem_req=30G
#$ -pe def_slot 2

bash /home/aiokada/sandbox/nanopore/script/common/medaka_split.sh \
/home/aiokada/sandbox/nanopore/minimap2/COLO829BL/COLO829BL.bam \
/home/aiokada/sandbox/nanopore/medaka/COLO829BL_chr22 \
/home/aiokada/sandbox/nanopore/log/COLO829BL_chr22 \
chr22
