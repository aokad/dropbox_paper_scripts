#!/bin/bash -x
set -x
set -o errexit
set -o nounset

INPUT_BAM=$1
OUTPUT_DIR=$2
LOG_DIR=$3

#source /home/aiokada/venv/medaka-gpu/bin/activate
#export PATH=$PATH:/home/aiokada/sandbox/minimap2/minimap2-2.17/
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/aiokada/usr/lib64/

rm -rf ${OUTPUT_DIR}
mkdir -p ${OUTPUT_DIR}
medaka_variant \
-f /home/aiokada/work/simg/GRCh38.d1.vd1/GRCh38.d1.vd1.fa \
-i ${INPUT_BAM} \
-t 2 \
-m r941_prom_high_g344 \
-s r941_prom_high_g344 \
-o ${OUTPUT_DIR}

bgzip ${OUTPUT_DIR}/round_1.vcf
tabix -p vcf ${OUTPUT_DIR}/round_1.vcf.gz

