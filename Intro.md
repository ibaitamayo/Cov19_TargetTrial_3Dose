---
title: "Descriptivo Target Trial"
author: "Francisco Sánchez Sáez"
date: "2022-06-19"
output: 
  bookdown::html_document2:
    keep_md: true 
    theme: cerulean
    highlight: breezedark
    css: style.css
    anchor_sections: false
    toc: yes
    toc_float:
      collapsed: yes
      smooth_scroll: yes
      code_folding: show
    toc_depth: 3
bibliography: References.bib
csl: tl.csl
---



# Introducción

***

En este proyecto se va a realizar la metodología del *Target trial*. Dicha metodología consiste en realizar la emulación de un ensayo clínico a través de datos observacionales. En particular se aplica la metodología descrita en [@Danaei2013]. Empleando esta metodología, se van a emular múltiples ensayos con diferentes tiempos índice. Para cada tiempo índice se aplicaran los criterios de inclusión/exclusión del ensayo clínico a emular. Por lo tanto, vamos a tener individuos que pueden participar en más de un ensayo. En concreto, los no-iniciadores durante todo el periodo, y, los iniciadores, en el periodo previo a la iniciación, van a participar en más de una emulación del ensayo clínico siempre y cuando cumplan el resto de criterios de inclusión/exclusión.

El caso de estudio que se va a analizar es el de la efectivad vacunal de la tercera dosis (segunda para los pacientes de Janssen) en la población general de la comunidad foral de Navarra. En el conjunto de la población española, la efectividad estimada entre los días 7 hasta el 34 después de la tercera dosis, con fechas de vacunación comprendidas entre el 3 de enero y el 6 de febrero de 2022, fue del 51.3% (95% CI 50.2–52.4) [@Monge2022]. 
<br>

# Referencias

***
