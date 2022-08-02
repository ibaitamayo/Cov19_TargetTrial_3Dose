---
title: "Criterios de exclusión estáticos"
output: 
  html_document:
    code_folding: show
    highlight: espresso
    css: style.css
    keep_md: yes
    number_sections: yes
    theme: readable
    toc: yes  
    toc_float:
      collapsed: yes
      smooth_scroll: yes
      toc_depth: 3     
editor_options: 
  chunk_output_type: inline
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
## Error in parse_block(g[-1], g[1], params.src, markdown_mode): Duplicate chunk label 'librerias', which has been used for the chunk:
## # source("0_a_librerias.R")
## # ya se cargan cuando se carguen las funciones
```




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
## Error in glue("n de partida: {nrow(poblacion)}"): no se pudo encontrar la función "glue"
```


```r
# guardar base con exclusiones estáticas---------------------------------------
saveRDS(pobana_1, file.path("Resultados", "pobana_1.RDS"))
```

```
## Error in saveRDS(pobana_1, file.path("Resultados", "pobana_1.RDS")): objeto 'pobana_1' no encontrado
```
    

