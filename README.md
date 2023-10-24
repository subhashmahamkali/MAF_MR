[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](http://www.gnu.org/licenses/gpl-3.0)

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

# Project Guideline

- To guide group members having a better sense about the project layout, here we briefly introduce the specific purposes of the [dir system](https://jyanglab.github.io/2017-01-07-project/). The layout of dirs is based on the idea borrowed from [ProjectTemplate](http://projecttemplate.net/architecture.html).

- The guideline for the collaborative [workflow](https://jyanglab.github.io/2017-01-10-project-using-github/).

- Check out progress and things [to-do](TODO.md) and throw ideas via the wiki page.


## License
This is an ongoing research project. It was intended for internal lab usage. It has not been extensively tested. Use at your own risk.
It is a free and open source software, licensed under [GPLv3](LICENSE).
