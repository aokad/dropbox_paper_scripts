#!/bin/bash -x
set -x
set -o errexit
set -o nounset

INPUT_VCF=$1
INPUT_BAM=$2
OUTPUT_DIR=$3

mkdir -p ${OUTPUT_DIR}

whatshap phase \
 -o ${OUTPUT_DIR}/phased.vcf \
 --reference=/home/aiokada/work/simg/GRCh38.d1.vd1/GRCh38.d1.vd1.fa \
 --ignore-read-groups \
 ${INPUT_VCF} \
 ${INPUT_BAM}

bgzip ${OUTPUT_DIR}/phased.vcf
tabix -p vcf ${OUTPUT_DIR}/phased.vcf.gz
