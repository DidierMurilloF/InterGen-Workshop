FROM rocker/binder:4.1.1
# FROM rstudio/r-base:4.1.1-focal

# Copy repo into ${HOME}, make user own $HOME
USER root
COPY . ${HOME}
RUN chown -R ${NB_USER} ${HOME}
USER ${NB_USER}

RUN R -e 'install.packages("remotes")'
RUN Rscript -e 'remotes::install_version("magrittr",upgrade="never", version = "2.0.3")'
RUN Rscript -e 'remotes::install_version("tibble",upgrade="never", version = "3.1.8")'
RUN Rscript -e 'remotes::install_version("glue",upgrade="never", version = "1.6.2")'
RUN Rscript -e 'remotes::install_version("pkgload",upgrade="never", version = "1.3.0")'
RUN Rscript -e 'remotes::install_version("testthat",upgrade="never", version = "3.1.4")'
RUN Rscript -e 'remotes::install_version("stringi",upgrade="never", version = "1.7.8")'
RUN Rscript -e 'remotes::install_version("stringr",upgrade="never", version = "1.4.0")'
RUN Rscript -e 'remotes::install_version("yaml",upgrade="never", version = "2.3.5")'
RUN Rscript -e 'remotes::install_version("lme4",upgrade="never", version = "1.1-30")'
RUN Rscript -e 'remotes::install_version("dplyr",upgrade="never", version = "1.0.9")'
RUN Rscript -e 'remotes::install_version("tidyr",upgrade="never", version = "1.2.0")'
RUN Rscript -e 'remotes::install_version("ggrepel",upgrade="never", version = "0.9.1")'
RUN Rscript -e 'remotes::install_version("ggplot2",upgrade="never", version = "3.3.6")'
RUN Rscript -e 'remotes::install_version("htmltools",upgrade="never", version = "0.5.3")'
RUN Rscript -e 'remotes::install_version("DT",upgrade="never", version = "0.24")'
RUN Rscript -e 'remotes::install_version("shiny",upgrade="never", version = "1.7.2")'
RUN Rscript -e 'remotes::install_version("DBI",upgrade="never", version = "1.1.3")'
RUN Rscript -e 'remotes::install_version("ggpubr",upgrade="never", version = "0.4.0")'
RUN Rscript -e 'remotes::install_version("data.table",upgrade="never", version = "1.14.2")'
RUN Rscript -e 'remotes::install_version("waiter",upgrade="never", version = "0.2.5")'
RUN Rscript -e 'remotes::install_version("config",upgrade="never", version = "0.3.1")'
RUN Rscript -e 'remotes::install_version("sjmisc",upgrade="never", version = "2.8.9")'
RUN Rscript -e 'remotes::install_version("odbc",upgrade="never", version = "1.3.3")'
RUN Rscript -e 'remotes::install_version("QBMS",upgrade="never", version = "0.8.0")'
RUN Rscript -e 'remotes::install_version("emmeans",upgrade="never", version = "1.8.0")'
RUN Rscript -e 'remotes::install_version("broom.mixed",upgrade="never", version = "0.2.9.4")'
RUN Rscript -e 'remotes::install_version("lmerTest",upgrade="never", version = "3.1-3")'
RUN Rscript -e 'remotes::install_version("psych",upgrade="never", version = "2.2.5")'
RUN Rscript -e 'remotes::install_version("sever",upgrade="never", version = "0.0.7")'
RUN Rscript -e 'remotes::install_version("factoextra",upgrade="never", version = "1.0.7")'
RUN Rscript -e 'remotes::install_version("reshape",upgrade="never", version = "0.8.9")'
RUN Rscript -e 'remotes::install_version("formattable",upgrade="never", version = "0.2.1")'
RUN Rscript -e 'remotes::install_version("kableExtra",upgrade="never", version = "1.3.4")'
RUN Rscript -e 'remotes::install_version("readxl",upgrade="never", version = "1.4.0")'
RUN Rscript -e 'remotes::install_version("echarts4r",upgrade="never", version = "0.4.4")'
RUN Rscript -e 'remotes::install_version("summarytools",upgrade="never", version = "1.0.1")'
RUN Rscript -e 'remotes::install_version("plotly",upgrade="never", version = "4.10.0")'
RUN Rscript -e 'remotes::install_version("shinycssloaders",upgrade="never", version = "1.0.0")'
RUN Rscript -e 'remotes::install_version("shinyWidgets",upgrade="never", version = "0.7.2")'
RUN Rscript -e 'remotes::install_version("shinyalert",upgrade="never", version = "3.0.0")'
RUN Rscript -e 'remotes::install_version("shinytoastr",upgrade="never", version = "2.1.1")'
RUN Rscript -e 'remotes::install_version("rintrojs",upgrade="never", version = "0.3.2")'
RUN Rscript -e 'remotes::install_version("shinyjs",upgrade="never", version = "2.1.0")'
RUN Rscript -e 'remotes::install_version("SpATS",upgrade="never", version = "1.0-17")'
RUN Rscript -e 'remotes::install_version("golem",upgrade="never", version = "0.3.3")'
RUN Rscript -e 'remotes::install_version("readr",upgrade="never", version = "2.1.2")'
RUN Rscript -e 'remotes::install_version("sommer",upgrade="never", version = "4.2.0")'
RUN Rscript -e 'remotes::install_version("colourpicker",upgrade="never", version = "1.1.1")'
RUN Rscript -e 'remotes::install_version("FielDHub",upgrade="never", version = "1.2.1")'
RUN Rscript -e 'remotes::install_github("RinteRface/bs4Dash@aef2c3a02387e9cf0eabbeffd4104177ef463237")'
  
## run any install.R script we find
RUN if [ -f install.R ]; then R --quiet -f install.R; fi
