Bootstrap: docker
From: rocker/r-ver:3.6.0

%labels
    Maintainer @jacobhepkema
    Version v0.1
  
%post
    apt-get update && apt-get install -y --no-install-recommends lbzip2 libhdf4-alt-dev libhdf5-dev libxml-parser-perl && install2.r --error BiocManager optparse stringr pracma hashmap reshape2 ggplot2 dplyr viridis tools grid gridExtra && R -e "BiocManager::install(c('rhdf5', 'pheatmap', 'Biostrings', 'ggseqlogo', 'ggrepel', 'DelayedMatrixStats'), update=FALSE, ask=FALSE)"

# smoke test
R --version

%runscript
    exec Rscript "$@"
