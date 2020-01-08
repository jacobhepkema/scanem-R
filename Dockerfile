FROM rocker/r-ver:3.6.0
MAINTAINER "Jacob Hepkema" github.com/jacobhepkema

# Adapted from https://github.com/rocker-org/geospatial

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    procps \
    lbzip2 \
    libhdf4-alt-dev \
    libhdf5-dev \
    libxml-parser-perl

RUN install2.r --error BiocManager \
  RColorBrewer \
  optparse \
  hashmap \
  reshape2 \
  pracma \
  stringr \
  ggplot2 \
  dplyr \
  viridis \
  gridExtra \
  && R -e "BiocManager::install(c('rhdf5', 'pheatmap', 'Biostrings', 'ggseqlogo', 'ggrepel', 'DelayedMatrixStats'), update=FALSE, ask=FALSE)"
  
RUN R --version | grep -m1 ""
