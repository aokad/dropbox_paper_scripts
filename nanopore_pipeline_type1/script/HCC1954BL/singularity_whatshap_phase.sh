#!/bin/bash -x
#$ -S /bin/bash
#$ -cwd
#$ -o /home/aiokada/sandbox/nanopore/log/HCC1954BL
#$ -e /home/aiokada/sandbox/nanopore/log/HCC1954BL
#$ -l s_vmem=100G,mem_req=100G

singularity exec  \
/home/aiokada/sandbox/nanopore/image/medaka-20201217.simg \
/bin/bash /home/aiokada/sandbox/nanopore/script/common/whatshap_phase.sh \
/home/aiokada/sandbox/nanopore/medaka/HCC1954BL/round_1.vcf.gz \
/home/aiokada/sandbox/nanopore/minimap2/HCC1954BL/HCC1954BL.bam \
/home/aiokada/sandbox/nanopore/whatshap/HCC1954BL

