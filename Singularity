Bootstrap: docker
From: rocker/r-ver:3.6.0

%labels
    Maintainer @jacobhepkema
    Version v0.1
  
%post
    install2.r --error hdf5r optparse stringr ggplot2 dplyr viridis && R -e "BiocManager::install(c('rhdf5', 'pheatmap'), update=FALSE, ask=FALSE)"

# smoke test
R --version

%runscript
    exec Rscript "$@"
