# MAF_MR
calculating MAF (Minor Allele Frequency) and missing rate

Data contains a .csv file with marker names in the A column and their genotype data for each marker in the rest of the columns. that is "ng_rice_snp"
This data is filtered and cleaned to calculate missing rate and minor allele frequency.
0 - homozygous reference allele
1 - heterozygous allele
2 - homozygous alternative allele.
"-" = missing rate
I first calculated the missing rate for each marker (row) for all the individual samples.
later created a function called "calculate_maf" to calculate the number of reference alleles and the number of alternative alleles from, 0,1,2
later calculated the ref and alt frequencies within this function.

using the "apply" function in R.studio I have applied this function over all the markers to calculate MAF.
with the write.csv function, I have updated a new .csv file with the missing rate and MAF(minor allele frequency) for all the markers.
