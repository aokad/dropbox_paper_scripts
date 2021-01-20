set -eux

mkdir -p ./medaka_cpu_split_mem32/HG002/merge
cd ./medaka_cpu_split_mem32/HG002/merge
rm *

cp ../chr1/round_1.vcf.gz  ./chr1_round_1.vcf.gz ; gunzip ./chr1_round_1.vcf.gz 
cp ../chr2/round_1.vcf.gz  ./chr2_round_1.vcf.gz ; gunzip ./chr2_round_1.vcf.gz 
cp ../chr3/round_1.vcf.gz  ./chr3_round_1.vcf.gz ; gunzip ./chr3_round_1.vcf.gz 
cp ../chr4/round_1.vcf.gz  ./chr4_round_1.vcf.gz ; gunzip ./chr4_round_1.vcf.gz 
cp ../chr5/round_1.vcf.gz  ./chr5_round_1.vcf.gz ; gunzip ./chr5_round_1.vcf.gz 
cp ../chr6/round_1.vcf.gz  ./chr6_round_1.vcf.gz ; gunzip ./chr6_round_1.vcf.gz 
cp ../chr7/round_1.vcf.gz  ./chr7_round_1.vcf.gz ; gunzip ./chr7_round_1.vcf.gz 
cp ../chr8/round_1.vcf.gz  ./chr8_round_1.vcf.gz ; gunzip ./chr8_round_1.vcf.gz 
cp ../chr9/round_1.vcf.gz  ./chr9_round_1.vcf.gz ; gunzip ./chr9_round_1.vcf.gz 
cp ../chr10/round_1.vcf.gz ./chr10_round_1.vcf.gz; gunzip ./chr10_round_1.vcf.gz
cp ../chr11/round_1.vcf.gz ./chr11_round_1.vcf.gz; gunzip ./chr11_round_1.vcf.gz
cp ../chr12/round_1.vcf.gz ./chr12_round_1.vcf.gz; gunzip ./chr12_round_1.vcf.gz
cp ../chr13/round_1.vcf.gz ./chr13_round_1.vcf.gz; gunzip ./chr13_round_1.vcf.gz
cp ../chr14/round_1.vcf.gz ./chr14_round_1.vcf.gz; gunzip ./chr14_round_1.vcf.gz
cp ../chr15/round_1.vcf.gz ./chr15_round_1.vcf.gz; gunzip ./chr15_round_1.vcf.gz
cp ../chr16/round_1.vcf.gz ./chr16_round_1.vcf.gz; gunzip ./chr16_round_1.vcf.gz
cp ../chr17/round_1.vcf.gz ./chr17_round_1.vcf.gz; gunzip ./chr17_round_1.vcf.gz
cp ../chr18/round_1.vcf.gz ./chr18_round_1.vcf.gz; gunzip ./chr18_round_1.vcf.gz
cp ../chr19/round_1.vcf.gz ./chr19_round_1.vcf.gz; gunzip ./chr19_round_1.vcf.gz
cp ../chr20/round_1.vcf.gz ./chr20_round_1.vcf.gz; gunzip ./chr20_round_1.vcf.gz
cp ../chr21/round_1.vcf.gz ./chr21_round_1.vcf.gz; gunzip ./chr21_round_1.vcf.gz
cp ../chr22/round_1.vcf.gz ./chr22_round_1.vcf.gz; gunzip ./chr22_round_1.vcf.gz
cp ../chrX/round_1.vcf.gz  ./chrX_round_1.vcf.gz ; gunzip ./chrX_round_1.vcf.gz 
cp ../chrY/round_1.vcf.gz  ./chrY_round_1.vcf.gz ; gunzip ./chrY_round_1.vcf.gz 

grep "^##fileformat"             --no-filename ./chr1_round_1.vcf  > ./round_1.vcf 
grep "^##FILTER=<ID=PASS,"       --no-filename ./chr1_round_1.vcf >> ./round_1.vcf 
grep "^##medaka_version"         --no-filename ./chr1_round_1.vcf >> ./round_1.vcf 
grep "^##contig"                 --no-filename ./chr*_round_1.vcf >> ./round_1.vcf 
grep "^##INFO"                   --no-filename ./chr1_round_1.vcf >> ./round_1.vcf 
grep "^##FORMAT"                 --no-filename ./chr1_round_1.vcf >> ./round_1.vcf 
grep "^##CL"                     --no-filename ./chr*_round_1.vcf >> ./round_1.vcf 
grep "^##FILTER=<ID=lowqual,"    --no-filename ./chr1_round_1.vcf >> ./round_1.vcf 
grep "^##bcftools_filterVersion" --no-filename ./chr1_round_1.vcf >> ./round_1.vcf 
grep "^##bcftools_filterCommand" --no-filename ./chr1_round_1.vcf >> ./round_1.vcf 
grep "^#CHROM"                   --no-filename ./chr1_round_1.vcf >> ./round_1.vcf 

egrep -v ^# ./chr1_round_1.vcf  >> ./round_1.vcf
egrep -v ^# ./chr2_round_1.vcf  >> ./round_1.vcf
egrep -v ^# ./chr3_round_1.vcf  >> ./round_1.vcf
egrep -v ^# ./chr4_round_1.vcf  >> ./round_1.vcf
egrep -v ^# ./chr5_round_1.vcf  >> ./round_1.vcf
egrep -v ^# ./chr6_round_1.vcf  >> ./round_1.vcf
egrep -v ^# ./chr7_round_1.vcf  >> ./round_1.vcf
egrep -v ^# ./chr8_round_1.vcf  >> ./round_1.vcf
egrep -v ^# ./chr9_round_1.vcf  >> ./round_1.vcf
egrep -v ^# ./chr10_round_1.vcf >> ./round_1.vcf
egrep -v ^# ./chr11_round_1.vcf >> ./round_1.vcf
egrep -v ^# ./chr12_round_1.vcf >> ./round_1.vcf
egrep -v ^# ./chr13_round_1.vcf >> ./round_1.vcf
egrep -v ^# ./chr14_round_1.vcf >> ./round_1.vcf
egrep -v ^# ./chr15_round_1.vcf >> ./round_1.vcf
egrep -v ^# ./chr16_round_1.vcf >> ./round_1.vcf
egrep -v ^# ./chr17_round_1.vcf >> ./round_1.vcf
egrep -v ^# ./chr18_round_1.vcf >> ./round_1.vcf
egrep -v ^# ./chr19_round_1.vcf >> ./round_1.vcf
egrep -v ^# ./chr20_round_1.vcf >> ./round_1.vcf
egrep -v ^# ./chr21_round_1.vcf >> ./round_1.vcf
egrep -v ^# ./chr22_round_1.vcf >> ./round_1.vcf
egrep -v ^# ./chrX_round_1.vcf  >> ./round_1.vcf
egrep -v ^# ./chrY_round_1.vcf  >> ./round_1.vcf

# tabix
bgzip ./round_1.vcf
tabix -p vcf ./round_1.vcf.gz
