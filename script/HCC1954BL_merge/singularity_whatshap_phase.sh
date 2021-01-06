#!/bin/bash -x
#$ -S /bin/bash
#$ -cwd
#$ -o /home/aiokada/sandbox/nanopore/log/HCC1954BL_merge
#$ -e /home/aiokada/sandbox/nanopore/log/HCC1954BL_merge
#$ -l s_vmem=100G,mem_req=100G

singularity exec  \
/home/aiokada/sandbox/nanopore/image/medaka-20201217.simg \
/bin/bash /home/aiokada/sandbox/nanopore/script/common/whatshap_phase.sh \
/home/aiokada/sandbox/nanopore/medaka/HCC1954BL_merge/round_1.vcf.gz \
/home/aiokada/sandbox/nanopore/minimap2/HCC1954BL_merge/HCC1954BL_merge.bam \
/home/aiokada/sandbox/nanopore/whatshap/HCC1954BL_merge

