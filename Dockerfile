FROM rocker/binder:4.2.0

## Declares build arguments
ARG NB_USER
ARG NB_UID

ENV DEBIAN_FRONTEND=noninteractive
USER root
USER ${NB_USER}

RUN R -e "remotes::install_github('benmarwick/rrtools')" 
