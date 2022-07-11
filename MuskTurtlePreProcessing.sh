#Musk turtle pre-processing


#Copy the OG data into my scratch folder
Base_Directory="/scratch/sbw0033/MuskTurtleGenomics"
Original_Directory="/mmfs1/scratch/phyletica/abronia-sternotherus"
cd "${Base_Directory}"
cd "${Original_Directory}"
cp -r * "${Base_Directory}"

#Raw Data direcory
#
#Install iPyrad
#export CONDA_PKGS_DIRS=~/.conda/pkgs
#conda create -n iPyradEnv
#Just check on some stuff
#ls ~/.conda/
