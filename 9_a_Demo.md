---
title: "Emulación de target trial"
author: "Francisco Sánchez Sáez"
date: "2022-08-03"
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







```r
# función para cargar un .Rmd como si se hiciese source de un .r---------------
source_rmd = function(file, ...) {
  tmp_file = tempfile(fileext = ".R")
  on.exit(unlink(tmp_file), add = TRUE)
  knitr::purl(file, output = tmp_file)
  source(file = tmp_file, ...)
}
```


```r
# cargar funciones de 0_funciones----------------------------------------------
if (!exists("se_ha_cargado_f")) {
suppressMessages(source_rmd("0_b_funciones.rmd"))
}
```

```
## 
  |                                                                            
  |                                                                      |   0%
  |                                                                            
  |..                                                                    |   4%
  |                                                                            
  |.....                                                                 |   7%
  |                                                                            
  |........                                                              |  11%
  |                                                                            
  |..........                                                            |  14%
  |                                                                            
  |............                                                          |  18%
  |                                                                            
  |...............                                                       |  21%
  |                                                                            
  |..................                                                    |  25%
  |                                                                            
  |....................                                                  |  29%
  |                                                                            
  |......................                                                |  32%
  |                                                                            
  |.........................                                             |  36%
  |                                                                            
  |............................                                          |  39%
  |                                                                            
  |..............................                                        |  43%
  |                                                                            
  |................................                                      |  46%
  |                                                                            
  |...................................                                   |  50%
  |                                                                            
  |......................................                                |  54%
  |                                                                            
  |........................................                              |  57%
  |                                                                            
  |..........................................                            |  61%
  |                                                                            
  |.............................................                         |  64%
  |                                                                            
  |................................................                      |  68%
  |                                                                            
  |..................................................                    |  71%
  |                                                                            
  |....................................................                  |  75%
  |                                                                            
  |.......................................................               |  79%
  |                                                                            
  |..........................................................            |  82%
  |                                                                            
  |............................................................          |  86%
  |                                                                            
  |..............................................................        |  89%
  |                                                                            
  |.................................................................     |  93%
  |                                                                            
  |....................................................................  |  96%
  |                                                                            
  |......................................................................| 100%
```

```
## Warning: package 'plotly' was built under R version 4.2.1
```

```
## Warning: package 'Matching' was built under R version 4.2.1
```

```
## Warning: package 'ggpmisc' was built under R version 4.2.1
```

```
## Warning: package 'ggpp' was built under R version 4.2.1
```

```
## Warning: package 'conflicted' was built under R version 4.2.1
```

# Introducción

En este proyecto se va a realizar la metodología del *Target trial*. Dicha metodología consiste en realizar la emulación de un ensayo clínico a través de datos observacionales. En particular se aplica la metodología descrita en [@Danaei2013]. Empleando esta metodología, se van a emular múltiples ensayos con diferentes tiempos índice. Para cada tiempo índice se aplicaran los criterios de inclusión/exclusión del ensayo clínico a emular. Por lo tanto, vamos a tener individuos que pueden participar en más de un ensayo. En concreto, los no-iniciadores durante todo el periodo, y, los iniciadores, en el periodo previo a la iniciación, van a participar en más de una emulación del ensayo clínico siempre y cuando cumplan el resto de criterios de inclusión/exclusión.

El caso de estudio que se va a analizar es el de la efectivad vacunal de la tercera dosis (segunda para los pacientes de Janssen) en la población general de la comunidad foral de Navarra. En el conjunto de la población española, la efectividad estimada entre los días 7 hasta el 34 después de la tercera dosis, con fechas de vacunación comprendidas entre el 3 de enero y el 6 de febrero de 2022, fue del 51.3% (95% CI 50.2–52.4) [@Monge2022]. 
<br>

# Criterios de exclusión independientes del tiempo 0



# Exclusiones estáticas

***

En este .Rmd se realizan las **exclusiones que no dependen del tiempo 0** y por tanto se realizan antes de determinar la fecha (fechas) de inicio de las emulaciones de los ensayos clínicos. Se alimenta a la función con una lista que contiene el texto del criterio de exclusión, para que se muestre por pantalla, y de las variables que definen dicho criterio. De momento, el tipo de variables que definen las exclusiones son de dos tipos:

- Lógicas. Sí el valor es **TRUE**, es necesario excluir al individuo.

- No lógicas. Se excluyen las variables de las cuales no se tiene información (en este caso se utiliza para eliminar las observaciones con NA en la zona básica de salud).

Cuando se genere nueva casuística, se puede añadir entre el if() y el else() de la función *excluir()*.
      

```r
# se crean listas que dependen del proyecto------------------------------------
lista_exclusion <- list(
  criterios = list(
  c1 = "Excluyendo: socio y/o sanitarios...",
  c2 = "Excluyendo: trabj educacion...", # no tengo claro que se hayan de excluir
  c3 = "Excluyendo: viven en residencia...",
  c4 = "Excluyendo: dependientes...",
  c5 = "Excluyendo: zona basica desconocida..."
  # c6 = "Excluyendo: tuvo infección previa...", # esta es dependiente del tiempo
  # c7 = "Excluyendo: no finalizo vacunacion completa 90 dias antes..." # dependiente del tiempo
),
variables = list(
  v1 = "prfss",
  v2 = "educa",
  v3 = "resn",
  v4 = "depe",
  v5 = "czbs"
))
```


```r
# función para excluir siguiendo un criterio-----------------------------------
excluir <- function(pob, 
                    crit,
                    var)
{
  
  if (is.logical(pob %>% pull(var)) == TRUE) {
  print(glue("Variable lógica. {crit}"))
  pob <- pob %>% filter(is.na(get(var)) |
                     get(var) != TRUE)
    print(glue("n : {nrow(pob)}"))
  pob
  }
  else {
  print(glue("Variable no lógica. {crit}"))
  pob <- pob %>% filter(!is.na(get(var)))
    print(glue("n : {nrow(pob)}"))
  pob
  }
}
```


```r
# flujo------------------------------------------------------------------------
hacer_flujo <- function(poblacion,
                        exc = lista_exclusion
                   ) 
  {
  print(glue("n de partida: {nrow(poblacion)}"))

  for(i in seq_along(exc$criterios)) {
  poblacion <- excluir(pob = poblacion,
                       crit = exc$criterios[[i]],
                       var = exc$variables[[i]])
}
  poblacion
  }
```


```r
# aplicar exclusiones independientes del tiempo_0------------------------------
pobana_1 <- hacer_flujo(poblacion = pobana_0, 
            exc = lista_exclusion)
```

```
## n de partida: 488524
## Variable lógica. Excluyendo: socio y/o sanitarios...
## n : 468107
## Variable lógica. Excluyendo: trabj educacion...
## n : 394354
## Variable lógica. Excluyendo: viven en residencia...
## n : 385578
## Variable lógica. Excluyendo: dependientes...
## n : 379447
## Variable no lógica. Excluyendo: zona basica desconocida...
## n : 375735
```


```r
# guardar base con exclusiones estáticas---------------------------------------
saveRDS(pobana_1, file.path("Resultados", "pobana_1.RDS"))
```




# Referencias

***
