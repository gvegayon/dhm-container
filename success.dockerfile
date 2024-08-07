FROM docker.io/rocker/r-base:4.3.3

ADD .Rprofile .Rprofile

RUN Rscript -e "install.packages('pak')"
RUN Rscript -e "pak::pkg_install('github::stan-dev/cmdstanr')"
RUN Rscript -e "cmdstanr::install_cmdstan()"