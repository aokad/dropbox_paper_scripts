#!/bin/bash -x
#$ -S /bin/bash
#$ -cwd
#$ -o /home/aiokada/sandbox/nanopore/log/HG002
#$ -e /home/aiokada/sandbox/nanopore/log/HG002
#$ -l s_vmem=12G,mem_req=12G
#$ -l ljob

INVCF=/home/aiokada/sandbox/nanopore/medaka_cpu/HG002/round_1.vcf.gz
REFERENCE=/home/aiokada/work/simg/GRCh38.d1.vd1/GRCh38.d1.vd1.fa
BENCHMARK_VCF=/home/aiokada/sandbox/nanopore/happy/HG002_benchmark/HG002_GRCh38_1_22_v4.2.1_benchmark.vcf.gz
BENCHMARK_BED=/home/aiokada/sandbox/nanopore/happy/HG002_benchmark/HG002_GRCh38_1_22_v4.2.1_benchmark_noinconsistent.bed
OUTPUT_PREFIX=/home/aiokada/sandbox/nanopore/happy/HG002/cpu/vqsr

singularity exec \
/home/aiokada/sandbox/nanopore/image/hap.py-v0.3.9.simg \
/bin/bash /home/aiokada/sandbox/nanopore/script/common/happy.sh \
$INVCF \
$REFERENCE \
$BENCHMARK_VCF \
$BENCHMARK_BED \
$OUTPUT_PREFIX
