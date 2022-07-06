Musk turtle stuff

Base_Directory="/scratch/sbw0033/MuskTurtleGenomics"
Original_Directory="/mmfs1/scratch/phyletica/abronia-sternotherus"

#SternotherusRadSeq
cd "${Base_Directory}"
cd "${Original_Directory}"
cp -r * "${Base_Directory}"

#LOCATION OF ALIGNMENTS
/mmfs1/scratch/phyletica/abronia-sternotherus/stern-aligns/stern_align_defaults/single-snp_min-25perc-indiv

#Raw Data direcory
#
#Install iPyrad
#export CONDA_PKGS_DIRS=~/.conda/pkgs
#conda create -n iPyradEnv
#Just check on some stuff
#ls ~/.conda/

#Activate the environment
module load python/anaconda/3.8.6
source activate iPyradEnv

#Need to peep this file
scp -r sbw0033@easley.auburn.edu:/scratch/sbw0033/MuskTurtleGenomics/demux/stern-tags-indiv-plate1.tsv  ~/Docs

#Okay, now let's get into iPyrad
#First, need to designate the barcodes file.
Barcode_file_P1="/scratch/sbw0033/MuskTurtleGenomics/demux/stern-tags-indiv-plate1.tsv"
Barcode_file_P2="/scratch/sbw0033/MuskTurtleGenomics/demux/stern-tags-indiv-plate2.tsv"
mv stern-tags-indiv-plate1.tsv /scratch/sbw0033/MuskTurtleGenomics/demux/
mv stern-tags-indiv-plate2.tsv /scratch/sbw0033/MuskTurtleGenomics/demux/

#To leave the environment
conda deactivate

ipyrad -n test
