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
    
    readable <- getBM(
        attributes = c("ensembl_gene_id", "hgnc_symbol","description"),
        filters = "ensembl_gene_id",
        values = ensembl.ids,
        mart = ensembl
    )
    
    if (dim(readable)[1] == 0) {
        cbind.data.frame("ensembl_gene_id" = ensembl.ids, "hgnc_symbol" = NA , "description" = "not in database")
    }else{
        readable
    }
}

# http://may2009.archive.ensembl.org/biomart/martview