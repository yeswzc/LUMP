# LUMP
Tumor purity estimation according to [Dvir Aran, Marina Sirota,and Atul J. Buttea. Systematic pan-cancer analysis of tumour purity. Nat Commun. 2015; 6:8971](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4671203/)

## Install
```
devtools::install_github("yeswzc/LUMP")
```

## Usage example

1. download the source code
2. load the R function
3. use it :
```
library(minfi)
library(minfiData)
baseDir <- system.file("extdata", package="minfiData")
targets <- read.metharray.sheet(baseDir)
RGset <- read.metharray.exp(targets = targets)
#Mset <- preprocessRaw(RGset) 
Mset = preprocessQuantile(RGset)
beta = getBeta(Mset)

lump(beta)
```

