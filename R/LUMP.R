#

lump = function(betas, sample_in_row = "Y"){
  #betas: matrix/data.frame if 
  #columns as probe IDs and row as samples: sample_in_row = Y
  #else sample_in_row = "N
  if(sample_in_row == "Y"){
    betas = betas[,colnames(betas) %in% lump_cpg, drop=F]
    lump_purity = apply(betas, MARGIN = 1, function(x){ LUMP = min(1, mean(x)/0.85); LUMP})
  }else{
    betas = betas[rownames(betas) %in% lump_cpg,, drop=F]
    lump_purity = apply(betas, MARGIN = 2, function(x){ LUMP = min(1, mean(x)/0.85); LUMP})
  }
  return(lump_purity)
}
