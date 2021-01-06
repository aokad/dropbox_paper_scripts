#!/bin/bash -x
#$ -S /bin/bash
#$ -cwd
#$ -o /home/aiokada/sandbox/nanopore/log/H2009_merge
#$ -e /home/aiokada/sandbox/nanopore/log/H2009_merge
#$ -l s_vmem=100G,mem_req=100G

singularity exec  \
/home/aiokada/sandbox/nanopore/image/medaka-20201217.simg \
/bin/bash /home/aiokada/sandbox/nanopore/script/common/whatshap_haplotag.sh \
/home/aiokada/sandbox/nanopore/whatshap/H2009BL_merge/phased.vcf.gz \
/home/aiokada/sandbox/nanopore/minimap2/H2009_merge/H2009_merge.bam \
/home/aiokada/sandbox/nanopore/whatshap/H2009_merge

