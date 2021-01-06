## setup

other scripts
```
git clone https://github.com/aokad/dropbox_paper_scripts.git

cd dropbox_paper_scripts/nanopore_pipeline_type1
mkdir image
cd image/
singularity pull docker://aokad/minimap2:2.17
singularity pull docker://aokad/medaka:20201224-cpu
```

GPU用のmedakaセットアップについてはdropbox paper参照
