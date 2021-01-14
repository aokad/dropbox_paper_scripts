#!/bin/bash -x
set -x
set -o errexit
set -o nounset

INPUT_FAST5=$1
INPUT_FASTQ=$2
INPUT_BAM=$3
OUTPUT_DIR=$4
REFERENCE=$5
REGION=$6
THREAD=$7

mkdir -p ${OUTPUT_DIR}
LOCAL_FASTQ=${OUTPUT_DIR}/$(basename ${INPUT_FASTQ})
rm -f ${LOCAL_FASTQ}
ln -s ${INPUT_FASTQ} ${LOCAL_FASTQ}
/nanopolish/nanopolish index -d ${INPUT_FAST5} ${LOCAL_FASTQ}

/nanopolish/nanopolish call-methylation \
-t ${THREAD} \
-r ${LOCAL_FASTQ} \
-b ${INPUT_BAM} \
-w "${REGION}" \
-g ${REFERENCE} \
> ${OUTPUT_DIR}/methylation_calls.tsv
