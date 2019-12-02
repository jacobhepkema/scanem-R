FROM rocker/r-ver:3.6.0
MAINTAINER "Jacob Hepkema" github.com/jacobhepkema

RUN install2.r --error hdf5r \
  && R -e "BiocManager::install('rhdf5', update=FALSE, ask=FALSE)"
