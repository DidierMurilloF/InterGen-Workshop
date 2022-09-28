FROM rocker/binder:4.1.3
# FROM rstudio/r-base:4.1.1-focal

# Copy repo into ${HOME}, make user own $HOME
USER root
COPY . ${HOME}
RUN chown -R ${NB_USER} ${HOME}
USER ${NB_USER}

# RUN R -e 'install.packages("remotes")'
# RUN Rscript -e 'install.packages("magrittr")'
# RUN Rscript -e 'install.packages("tibble")'
# RUN Rscript -e 'install.packages("glue")'
# RUN Rscript -e 'install.packages("pkgload")'
# RUN Rscript -e 'install.packages("testthat")'
# RUN Rscript -e 'install.packages("stringi")'
# RUN Rscript -e 'install.packages("stringr")'
# RUN Rscript -e 'install.packages("yaml")'
# RUN Rscript -e 'install.packages("lme4")'
# RUN Rscript -e 'install.packages("dplyr")'
# RUN Rscript -e 'install.packages("tidyr")'
# RUN Rscript -e 'install.packages("ggrepel")'
# RUN Rscript -e 'install.packages("ggplot2")'
# RUN Rscript -e 'install.packages("htmltools")'
# RUN Rscript -e 'install.packages("DT")'
# RUN Rscript -e 'install.packages("shiny")'
# RUN Rscript -e 'install.packages("ggpubr")'
# RUN Rscript -e 'install.packages("data.table")'
# RUN Rscript -e 'install.packages("waiter")'
# RUN Rscript -e 'install.packages("config")'
# RUN Rscript -e 'install.packages("sjmisc")'
# RUN Rscript -e 'install.packages("QBMS")'
# RUN Rscript -e 'install.packages("emmeans")'
# RUN Rscript -e 'install.packages("broom.mixed")'
# RUN Rscript -e 'install.packages("lmerTest")'
# RUN Rscript -e 'install.packages("psych")'
# RUN Rscript -e 'install.packages("sever")'
# RUN Rscript -e 'install.packages("factoextra")'
# RUN Rscript -e 'install.packages("reshape")'
# RUN Rscript -e 'install.packages("formattable")'
# RUN Rscript -e 'install.packages("kableExtra")'
# RUN Rscript -e 'install.packages("readxl")'
# RUN Rscript -e 'install.packages("echarts4r")'
# RUN Rscript -e 'install.packages("summarytools")'
# RUN Rscript -e 'install.packages("plotly")'
# RUN Rscript -e 'install.packages("shinycssloaders")'
# RUN Rscript -e 'install.packages("shinyWidgets")'
# RUN Rscript -e 'install.packages("shinyalert")'
# RUN Rscript -e 'install.packages("shinytoastr")'
# RUN Rscript -e 'install.packages("rintrojs")'
# RUN Rscript -e 'install.packages("shinyjs")'
# RUN Rscript -e 'install.packages("SpATS")'
# RUN Rscript -e 'install.packages("golem")'
# RUN Rscript -e 'install.packages("readr")'
# RUN Rscript -e 'install.packages("sommer")'
# RUN Rscript -e 'install.packages("colourpicker")'
# RUN Rscript -e 'install.packages("fontawesome")'
# RUN Rscript -e 'remotes::install_github("RinteRface/bs4Dash@aef2c3a02387e9cf0eabbeffd4104177ef463237")'
# RUN Rscript -e 'remotes::install_github("DidierMurilloF/FielDHub")' 
# RUN Rscript -e 'remotes::install_github("AparicioJohan/MrBeanApp")' 
  
## run any install.R script we find
RUN if [ -f install.R ]; then R --quiet -f install.R; fi
