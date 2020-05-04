#probes used to estimate purity
load(lump.cpg.list.rda)

lump = function(betas){
#betas: matrix/data.frame wiith columns as probe IDs and row as samples
    betas = betas[,colnames(betas) %in% lump_cpg]
    lump_purity = apply(res_betas, MARGIN = 1, function(x){ LUMP = min(1, mean(x)/0.85); LUMP}
    return(lump_purity)
}
