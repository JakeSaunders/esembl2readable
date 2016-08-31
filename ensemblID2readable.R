ensemblID2readable <- function(ensembl.ids, species = "hsapiens_gene_ensembl"){

    # install and load biomRt
    if (!require("biomaRt",character.only = T)) {install.packages(x,dep=TRUE)}    
    library(biomaRt)
    
    # setting for BiomaRt
    ensembl = useDataset(mart = useMart("ensembl"), dataset = species)
    # consider easy switch to mouse and zebra fish
    # ensembl = useDataset(mart = useMart("ensembl"), dataset = mmusculus_gene_ensembl)
    # "drerio_gene_ensemb"
    # consider others from  listDatasets(mart =  useMart("ensembl"))
    
    getBM(
        attributes = c("ensembl_gene_id", "hgnc_symbol","description"),
        filters = "ensembl_gene_id",
        values = ensembl.ids,
        mart = ensembl
    )
}

# http://may2009.archive.ensembl.org/biomart/martview