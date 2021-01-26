#!/bin/bash -x
#$ -S /bin/bash
#$ -cwd
#$ -o /home/aiokada/sandbox/nanopore/log/COLO829
#$ -e /home/aiokada/sandbox/nanopore/log/COLO829
#$ -l s_vmem=32G,mem_req=32G

set -eux
CHR=$1
OUTPUT_DIR=/home/aiokada/sandbox/nanopore/nanopolish_check/COLO829/

grep --no-filename ${CHR}$'\t' ~/archive-aiokada/sandbox/nanopore/nanopolish/COLO829/methylation_calls.tsv \
 | cut -f 1,2,3,4,5 | sort > ${OUTPUT_DIR}/methylation_calls_all2_${CHR}.tsv

tail -n +2 ~/archive-aiokada/sandbox/nanopore/nanopolish/COLO829/${CHR}/methylation_calls.tsv \
 | cut -f 1,2,3,4,5 | sort > ${OUTPUT_DIR}/methylation_calls_split2_${CHR}.tsv

mkdir -p ${OUTPUT_DIR}/${CHR}_all
mkdir -p ${OUTPUT_DIR}/${CHR}_split
split -l 10000 ${OUTPUT_DIR}/methylation_calls_all2_${CHR}.tsv ${OUTPUT_DIR}/${CHR}_all/
split -l 10000 ${OUTPUT_DIR}/methylation_calls_split2_${CHR}.tsv ${OUTPUT_DIR}/${CHR}_split/

diff -r ${OUTPUT_DIR}/${CHR}_all/ ${OUTPUT_DIR}/${CHR}_split/ > ${OUTPUT_DIR}/diff2_${CHR}.txt
rm -r ${OUTPUT_DIR}/${CHR}_all/ ${OUTPUT_DIR}/${CHR}_split/
