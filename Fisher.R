#This brief code is used to create a quick Fisher's test of the established contingency tables for both the bacterial and archaeal genomes of interest

#All credit goes to Navendu Vasavada - navendu.vasavada@alumni.upenn.edu

#Tables used for this analysis are as follows:

#archaea
#    mre11 rad50 hera nura
#in      9     9    4    5 
#out     0     0    0    4 
#na      0     0    5    0 

#bacteria
#    sbcc sbcd phob phor
#in     7    9    4    5
#out    2    1    2    0
#na     0    0    3    4

#'in' stands for the genes found both in the genome and in the operon of interest
#'out' stands for genes in the genome but not in the operon
#'NA' means these genes do not exist or are not annotated in the genome

################################################################################

#fishers exact test - archaea
input_mxn_table = structure(c(9L, 0L, 0L, 9L, 0L, 0L, 4L, 0L, 5L, 5L, 4L, 0L), dim = 3:4)
input_mxn_table #view the table to ensure it is correct
fisher.test(input_mxn_table) #fisher's exact test

#fishers exact test - bacteria
input_mxn_table = structure(c(7L, 2L, 0L, 8L, 1L, 0L, 4L, 2L, 3L, 5L, 0L, 4L), dim = 3:4)
input_mxn_table #view the table to ensure it is correct
fisher.test(input_mxn_table) #fisher's exact test

#2016 Navendu Vasavada