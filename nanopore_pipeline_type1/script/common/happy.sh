#!/bin/bash

set -xv

set -o errexit
set -o nounset
set -o pipefail

INPUT_VCF=$1
REFERENCE=$2
BENCHMARK_VCF=$3
BENCHMARK_BED=$4
OUTPUT_PREFIX=$5
mkdir -p $(dirname ${OUTPUT_PREFIX})

export HGREF=${REFERENCE}
/opt/hap.py/bin/hap.py \
    ${BENCHMARK_VCF} \
    ${INPUT_VCF} \
    -f ${BENCHMARK_BED} \
    -o ${OUTPUT_PREFIX} \
    --threads 1
