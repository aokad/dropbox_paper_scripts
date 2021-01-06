#!/bin/bash -x
#$ -S /bin/bash
#$ -cwd
#$ -o /home/aiokada/sandbox/nanopore/log/H2009
#$ -e /home/aiokada/sandbox/nanopore/log/H2009
#$ -l s_vmem=100G,mem_req=100G

singularity exec  \
/home/aiokada/sandbox/nanopore/image/medaka-20201217.simg \
/bin/bash /home/aiokada/sandbox/nanopore/script/common/whatshap_haplotag.sh \
/home/aiokada/sandbox/nanopore/whatshap/H2009BL/phased.vcf.gz \
/home/aiokada/sandbox/nanopore/minimap2/H2009/H2009.bam \
/home/aiokada/sandbox/nanopore/whatshap/H2009

