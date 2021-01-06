#!/bin/bash -x
#$ -S /bin/bash
#$ -cwd
#$ -o /home/aiokada/sandbox/nanopore/log/COLO829BL
#$ -e /home/aiokada/sandbox/nanopore/log/COLO829BL
#$ -l s_vmem=100G,mem_req=100G

singularity exec  \
/home/aiokada/sandbox/nanopore/image/medaka-20201217.simg \
/bin/bash /home/aiokada/sandbox/nanopore/script/common/whatshap_phase.sh \
/home/aiokada/sandbox/nanopore/medaka/COLO829BL/round_1.vcf.gz \
/home/aiokada/sandbox/nanopore/minimap2/COLO829BL/COLO829BL.bam \
/home/aiokada/sandbox/nanopore/whatshap/COLO829BL

