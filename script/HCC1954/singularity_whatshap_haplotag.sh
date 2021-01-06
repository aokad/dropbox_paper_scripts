#!/bin/bash -x
#$ -S /bin/bash
#$ -cwd
#$ -o /home/aiokada/sandbox/nanopore/log/HCC1954
#$ -e /home/aiokada/sandbox/nanopore/log/HCC1954
#$ -l s_vmem=100G,mem_req=100G

singularity exec  \
/home/aiokada/sandbox/nanopore/image/medaka-20201217.simg \
/bin/bash /home/aiokada/sandbox/nanopore/script/common/whatshap_haplotag.sh \
/home/aiokada/sandbox/nanopore/whatshap/HCC1954BL/phased.vcf.gz \
/home/aiokada/sandbox/nanopore/minimap2/HCC1954/HCC1954.bam \
/home/aiokada/sandbox/nanopore/whatshap/HCC1954

