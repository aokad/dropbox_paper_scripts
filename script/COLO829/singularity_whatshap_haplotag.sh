#!/bin/bash -x
#$ -S /bin/bash
#$ -cwd
#$ -o /home/aiokada/sandbox/nanopore/log/COLO829
#$ -e /home/aiokada/sandbox/nanopore/log/COLO829
#$ -l s_vmem=100G,mem_req=100G

singularity exec  \
/home/aiokada/sandbox/nanopore/image/medaka-20201217.simg \
/bin/bash /home/aiokada/sandbox/nanopore/script/common/whatshap_haplotag.sh \
/home/aiokada/sandbox/nanopore/whatshap/COLO829BL/phased.vcf.gz \
/home/aiokada/sandbox/nanopore/minimap2/COLO829/COLO829.bam \
/home/aiokada/sandbox/nanopore/whatshap/COLO829

