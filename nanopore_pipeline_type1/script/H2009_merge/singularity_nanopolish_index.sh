#!/bin/bash -x
#$ -S /bin/bash
#$ -cwd
#$ -o /home/aiokada/sandbox/nanopore/log/H2009_merge
#$ -e /home/aiokada/sandbox/nanopore/log/H2009_merge
#$ -l s_vmem=6G,mem_req=6G
#$ -l ljob

## prep.
#ls /archive/data/hgc0361/kchiba/nanopore_20203/H2009/fast5_pass/ | xargs printf "qrecall /archive/data/hgc0361/kchiba/nanopore_20203/H2009/fast5_pass/%s\n" > recall.sh; \
#ls /archive/data/hgc0361/kchiba/nanopore_20203/H2009_2/fast5_pass/ | xargs printf "qrecall /archive/data/hgc0361/kchiba/nanopore_20203/H2009_2/fast5_pass/%s\n" >> recall.sh; \
#ls /archive/data/hgc0361/kchiba/nanopore_20203/H2009_3/fast5_pass/ | xargs printf "qrecall /archive/data/hgc0361/kchiba/nanopore_20203/H2009_3/fast5_pass/%s\n" >> recall.sh
#bash recall.sh
#
#mkdir -p fast5/H2009_merge
#ln -s /home/kchiba/work_directory/work_nanopore/output/guppy3.4.5/H2009/ fast5/H2009_merge/H2009
#ln -s /archive/data/hgc0361/kchiba/nanopore_20203/H2009/ fast5/H2009_merge/H2009_1
#ln -s /archive/data/hgc0361/kchiba/nanopore_20203/H2009_2/ fast5/H2009_merge/H2009_2
#ln -s /archive/data/hgc0361/kchiba/nanopore_20203/H2009_3/ fast5/H2009_merge/H2009_3

singularity exec \
--bind /archive/data/hgc0361/kchiba/nanopore_20203/,/home/kchiba/work_directory/work_nanopore/output/guppy3.4.5 \
/home/kchiba/work_directory/work_nanopore/image/nanopolish-latest.simg \
/bin/bash /home/aiokada/sandbox/nanopore/script/common/nanopolish_index.sh \
/home/aiokada/sandbox/nanopore/fast5/H2009_merge \
/home/aiokada/sandbox/nanopore/fastq/H2009_merge/H2009_pass.fastq.gz \
/home/aiokada/sandbox/nanopore/nanopolish/H2009_merge/


