import ipyrad as ip
import ipyrad.analysis as ipa

# demux outer i7s to the different libraries
outer1 = ip.Assembly("Sternotherus_demux_run1_i7s_new")
outer1.params.project_dir = "/scratch/sbw0033/MuskTurtleGenomics/iPyrad/Tests"
outer1.params.raw_fastq_path = "/scratch/sbw0033/MuskTurtleGenomics/raw_data/Abronia_Sternoth_*.fq.gz"
outer1.params.barcodes_path = "/scratch/sbw0033/MuskTurtleGenomics/demux/i7-indexes.tsv"
outer1.params.datatype = 'pairddrad'


# important: set hackers params to demux on i7
outer1.hackersonly.demultiplex_on_i7_tags = True
outer1.hackersonly.merge_technical_replicates = True


# run step 1 to demux

outer1.run("1", auto=True, force=True)
