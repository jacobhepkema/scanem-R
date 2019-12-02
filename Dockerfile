FROM rocker/r-ver:3.6.0
MAINTAINER "Jacob Hepkema" github.com/jacobhepkema

RUN install2.r --error hdf5r \
  optparse \
  stringr \
  ggplot2 \
  dplyr \
  viridis \
  && R -e "BiocManager::install(c('rhdf5', 'pheatmap'), update=FALSE, ask=FALSE)"
