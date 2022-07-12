
#Activate the environment
module load python/anaconda/3.8.6
source activate iPyradEnv

#Set paths: Need the raw left/right reads, i7 and individual barcodes
Base_Directory="/scratch/sbw0033/MuskTurtleGenomics/iPyrad/Tests"
RightReads="/scratch/sbw0033/MuskTurtleGenomics/raw_data/Abronia_Sternoth_CKDL200169990-1a_HFJ75CCX2_L8_2.fq.gz"
LeftReads="/scratch/sbw0033/MuskTurtleGenomics/raw_data/Abronia_Sternoth_CKDL200169990-1a_HFJ75CCX2_L8_1.fq.gz"
i7barcodes="/scratch/sbw0033/MuskTurtleGenomics/demux/i7-indexes.tsv"
Demux_Barcode_file_P1="/scratch/sbw0033/MuskTurtleGenomics/demux/stern-tags-indiv-plate1.tsv"
Demux_Barcode_file_P2="/scratch/sbw0033/MuskTurtleGenomics/demux/stern-tags-indiv-plate2.tsv"
Enzyme1
Enzyme2

#Need to peep this file
cd /scratch/sbw0033/MuskTurtleGenomics/raw_data/
zless 10 Abronia_Sternoth_CKDL200169990-1a_HFJ75CCX2_L8_2.fq.gz

#Okay, now let's get into iPyrad
#First, need to designate the barcodes file.

mv stern-tags-indiv-plate1.tsv /scratch/sbw0033/MuskTurtleGenomics/demux/
mv stern-tags-indiv-plate2.tsv /scratch/sbw0033/MuskTurtleGenomics/demux/

#To leave the environment
conda deactivate

cd /scratch/sbw0033/MuskTurtleGenomics/iPyrad
ipyrad -n MuskTurtleParams

## change into the directory where your params file resides
cd $Base_Directory

##



## call ipyrad on your params file
ipyrad -p MuskTurtleParams.txt -s 1234567 -c ${SLURM_CPUS_PER_TASK}
