FROM rocker/tidyverse:3.6.0

COPY --chown=rstudio data_penguins.csv summarise_penguins.R /home/rstudio/
