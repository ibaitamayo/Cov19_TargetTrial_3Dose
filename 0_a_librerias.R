# Librerías
library(readxl)
library(readr)
library(data.table)
library(lubridate)
library(tidyverse)
library(knitr)
library(kableExtra)
library(plyr)
library(dplyr)
library(ggpubr)
library(scales)
library(stringr)
library(plotly)
library(Matching)
#library(MatchIt)
library(plotrix)  # para sacar piramides descriptivas de las tablas_analisis
library(ggpmisc) # para series temporales
library(survminer)
library(survival)
library(conflicted)
library(glue)

# usar fuciones de tidyverse antes que las de otros paquetes-------------------
conflict_prefer_all("tidyverse")
conflict_prefer_all("dplyr")
