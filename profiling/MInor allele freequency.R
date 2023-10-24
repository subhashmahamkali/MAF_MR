setwd("C:/Users/X1 Carbon 5/Desktop/MAF")
data = read.csv("ng_rice_snp.csv")

#Calculating the missing rate
missing_count = rowSums(data[, -1] == "-") #adding all the occurances of "-" per each row.
total_individuals = ncol(data) - 1 #calculating number of individual samples we have.
missing_rate = missing_count / total_individuals
data$missing_rate = missing_rate#creating a new column missing rate back in sheet.

#calculating MAF
#creating a function to calculate MAF
calculate_maf = function(row) {
  #Exclude the marker name and missing data
  genotypes = row[!is.na(row) & row != "-"]
  #Count of each allele (each '1' counts as one of each allele, '0' and '2' count as two of one allele)
  ref_allele = sum(genotypes == 0) * 2 + sum(genotypes == 1)
  alt_allele = sum(genotypes == 2) * 2 + sum(genotypes == 1)
  #Total alleles
  total_alleles = ref_allele + alt_allele
  #Frequencies
  ref_freq = ref_allele / total_alleles
  alt_freq = alt_allele / total_alleles
  return(min(ref_freq, alt_freq)) #Return the minor allele frequency
}
#Appling the function to each row and store the result in the maf
maf = apply(data[, -1], 1, calculate_maf)  # excluding the first column with marker names and looping over each row.
data$maf = maf #updating new column with maf in excell sheet.
#Saving the data frame with the new 'missing_rate' and 'maf' columns to a new CSV file
write.csv(data, file = "updated_ng_rice_snp.csv", row.names = FALSE, quote = FALSE, )
