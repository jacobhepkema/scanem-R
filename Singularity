Bootstrap: docker
From: rocker/r-ver:3.6.0

%labels
    Maintainer @jacobhepkema
    Version v0.1
  
%post
    apt-get update && apt-get install -y --no-install-recommends lbzip2 libhdf4-alt-dev libhdf5-dev && install2.r --error BiocManager optparse stringr ggplot2 dplyr viridis && R -e "BiocManager::install(c('rhdf5', 'pheatmap'), update=FALSE, ask=FALSE)"

# smoke test
R --version

%runscript
    exec Rscript "$@"
