#!/bin/bash -x
#$ -S /bin/bash
#$ -cwd
#$ -o /home/aiokada/sandbox/nanopore/log/COLO829
#$ -e /home/aiokada/sandbox/nanopore/log/COLO829
#$ -l s_vmem=30G,mem_req=30G

python3 script/common/calculate_methylation_frequency2.py \
  ./nanopolish/COLO829/COLO829.methylation_calls.tsv \
  ./whatshap/COLO829/haplotag.txt \
  ./calculate_methylation_frequency2/COLO829/COLO829
