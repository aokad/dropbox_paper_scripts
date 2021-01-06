#!/bin/bash -x
#$ -S /bin/bash
#$ -cwd
#$ -o /home/aiokada/sandbox/nanopore/log/COLO829
#$ -e /home/aiokada/sandbox/nanopore/log/COLO829
#$ -l s_vmem=10G,mem_req=10G
#$ -pe def_slot 8
#$ -l ljob

singularity exec \
--bind /home/kchiba/work_directory/work_nanopore/output/guppy3.4.5 \
/home/kchiba/work_directory/work_nanopore/image/nanopolish-latest.simg \
/bin/bash /home/aiokada/sandbox/nanopore/script/common/nanopolish.sh \
/home/kchiba/work_directory/work_nanopore/output/guppy3.4.5/COLO829/ \
/home/kchiba/work_directory/work_nanopore/output/guppy3.4.5/COLO829/COLO829_pass.fastq.gz \
/home/aiokada/sandbox/nanopore/nanopolish/COLO829/ \
/home/aiokada/work/simg/GRCh38.d1.vd1/GRCh38.d1.vd1.fa
