#!/bin/bash -x
#$ -S /bin/bash
#$ -cwd
#$ -o /home/aiokada/sandbox/nanopore/log/H2009BL
#$ -e /home/aiokada/sandbox/nanopore/log/H2009BL
#$ -l s_vmem=100G,mem_req=100G

singularity exec  \
/home/aiokada/sandbox/nanopore/image/medaka-20201217.simg \
/bin/bash /home/aiokada/sandbox/nanopore/script/common/whatshap_phase.sh \
/home/aiokada/sandbox/nanopore/medaka/H2009BL/round_1.vcf.gz \
/home/aiokada/sandbox/nanopore/minimap2/H2009BL/H2009BL.bam \
/home/aiokada/sandbox/nanopore/whatshap/H2009BL

