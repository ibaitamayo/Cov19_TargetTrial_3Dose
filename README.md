---
title: "Descriptivo Target Trial"
author: "NAVARRABIOMED-FISABIO"
date: "2022-07-08"
---

![](logo_compuesto.png)

# Introducción

*****

En este proyecto se va a realizar la metodología del *Target trial*. Dicha metodología consiste en realizar la emulación de un ensayo clínico a través de datos observacionales. En particular se aplica la metodología descrita en Danaei 2013 [1]. Empleando esta metodología, se van a emular múltiples ensayos con diferentes tiempos índice. Para cada tiempo índice se aplicaran los criterios de inclusión/exclusión del ensayo clínico a emular. Por lo tanto, vamos a tener individuos que pueden participar en más de un ensayo. En concreto, los no-iniciadores durante todo el periodo, y, los iniciadores, en el periodo previo a la iniciación, van a participar en más de una emulación del ensayo clínico siempre y cuando cumplan el resto de criterios de inclusión/exclusión.

El caso de estudio que se va a analizar es el de la efectivad vacunal de la tercera dosis (segunda para los pacientes de Janssen) en la población general de la comunidad foral de Navarra. En el conjunto de la población española, la efectividad estimada entre los días 7 hasta el 34 después de la tercera dosis, con fechas de vacunación comprendidas entre el 3 de enero y el 6 de febrero de 2022, fue del 51.3% (95% CI 50.2–52.4) [2]. 

<br>

# Archivos

***

## 0_a_librerias.R

Carga las librerías que se van a usar en este proyecto.

## 0_b_funciones.Rmd

Contiene las funciones que se están creando para la realización de la emulación de los ensayos clínicos. El objetivo es acabar realizando un paquete con las funciones aquí contenidas, de modo que se puedan emplear en diversas preguntas de investigación.

## 1_a_preprocesado_base_duplicados.Rmd

Carga la base *poblacion_Vacunas_Infecc_06_2022.csv (dat220613)*, transforma algunas variables y elimina observaciones repetidas. El resultado de este proceso crea una nueva base: *dat220613_sin_dup.RDS*.

## 1_b_creacion_pobana_0.Rmd

A partir de las bases *dat220613_sin_dup.RDS*, *pobna50en25.RDS* y *pobna88.RDS* (estas dos últimas bases se han cargado a traves del .RData del proyecto del dropbox y guardado como objetos.RDS) se crea la base *pobana_0.RDS*, que contiene la tabla de análisis de la población objetivo, a falta de añadir el número de test previos y de realizar los criterios de exclusión. Además, en este archivo se encuentra la descripción de las variables de la tabla *pobana_0.RDS*.

## 1_c_integrar_test.Rmd

Arregla la base de test de COVID-19: *poblacion_Pruebas_dtcas_06_2022.csv (test220613)*, creando la nueva base *test220613_cleaned.RDS*.

## 2_a_exclusiones_independientes_del_tiempo_0.Rmd

Realiza los criterios de exclusión *independientes del tiempo 0* escogido. Las funciones utilizadas aparecen repetidas tanto en 0_b como aquí, pero en el futuro sólo estarán en 0_b. Pasa de *pobana_0.RDS* a *pobana_1.RDS*.

## 2_b_exclusiones_dependientes_del_tiempo_0.Rmd

Realiza los criterios de exclusión *dependientes del tiempo 0* escogido. Las funciones utilizadas aparecen repetidas tanto en 0_b como aquí, pero en el futuro sólo estarán en 0_b. Se prueba el proceso para una fecha en concreto.

## 2_c_matching_multiples_tt.Rmd

Aplica el criterio de exclusión realizado en 2_b a múltiples ventanas temporales.

## 3_a_supervivencia

Realiza el análisis de supervivencia

## 3_b_hacer_tabla_1

Hace la Tabla 1 como en el artículo de Omicron de España [2].

## 3_c_hacer_tabla_2

Hace la Tabla 3 como en el artículo de Omicron de España [2].

## 3_d_hacer_tabla_3

Hace la Tabla 3 como en el artículo de Omicron de España [2].

<br>

# Rpubmed

***

- Demo:

https://rpubs.com/Frasansa/demo_target_trial_emulation[https://rpubs.com/Frasansa/demo_target_trial_emulation]

- Report:

https://rpubs.com/Frasansa/tt_report[https://rpubs.com/Frasansa/tt_report]

# Referencias

***

- [1] Danaei G, Rodríguez LAG, Cantero OF, Logan R, Hernán MA. Observational data for comparative effectiveness research: an emulation of randomised trials to estimate the effect of statins on primary prevention of coronary heart disease. Statistical methods in medical research 2013; 22: 70.

- [2] Monge S, Rojas-Benedicto A, Olmedo C, et al. Effectiveness of mRNA vaccine boosters against infection with the SARS-CoV-2 omicron (B.1.1.529) variant in Spain: a nationwide cohort study. The Lancet Infectious Diseases 2022; published online June. DOI:10.1016/S1473-3099(22)00292-4.
