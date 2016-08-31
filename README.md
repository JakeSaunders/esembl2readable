### Returns common gene abbreviations and descriptions from ensembl IDs

#### Description

ensemblID2readable is an R function which uses the biomaRt (https://bioconductor.org/packages/release/bioc/html/biomaRt.html) package from bioconductor to look up common gene abbreviations (HGNC symbol) and a short description associated with an ensemble ID.

#### Usage
ensemblID2readable(ensembl.ids = "...",species = "hsapiens_gene_ensembl")

#### Arguments:

ensembl.ids = a character vector containing one or more ensembl IDs

species =  a character vector to determine which species database will be used. It is passed to the dataset argument of the useDataset function. Defaults to "hsapiens_gene_ensembl" for human genes but can be changed to "musculus_gene_ensembl" for mouse or "drerio_gene_ensemb" for zebra fish.

#### Author(s)

CJ "Jake" Saunders

#### Examples
esembl2readable("ENSG00000111640")
esembl2readable("ENSG00000111640", species = "hsapiens_gene_ensembl")

#### Notes

Errors will occur if Ensembl web services are down, check here: http://may2009.archive.ensembl.org/biomart/martview
