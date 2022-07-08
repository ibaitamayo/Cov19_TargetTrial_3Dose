pacman::p_load(
  tidyverse,
  lubridate
)

load("base")


prepara_vacunas_mes <- function(fecha, mes) {
  print(fecha)
  print(mes)
  
  fecha_ini <- fecha
  fecha <- fecha + 30 * (mes - 1)
  
  x <- base %>%
    # selecciono los que inician el seguimiento ese día como vacunados con dos dosis de RNA (o como vacunados con X meses correspondientes)
    filter((fecha == date_vac_2 + 7 + 30 * (mes - 1) & 
              tipo_vac_1 %in% c("69911000122102", "69931000122106") &
              tipo_vac_2 %in% c("69911000122102", "69931000122106")) |
             # selecciono los no vacunados todavía
             fecha < date_vac_1 | is.na(date_vac_1),
           # elimino los que han padecido el covid antes del inicio del seguimiento
           is.na(date_inf_1) | date_inf_1 > fecha + 30* (mes - 1),
           # elimino los censurados antes del inicio del seguimiento
           is.na(date_cens) | date_cens > fecha + 30* (mes - 1),
           # elimino los vacunados con tercera dosis antes del inicio del seguimiento
           is.na(date_vac_3) | date_vac_3 > fecha + 30* (mes - 1),
    ) %>%
    # creo la variable de exposición
    mutate(vacunado = if_else(fecha == date_vac_2 + 7 + 30 * (mes - 1) & !is.na(date_vac_2), 1, 0),
           edad = round(as.numeric(fecha - date_nacim)/365.25),
           date_start = fecha,
           # creo la variable de final del seguimiento, teniendo en cuenta la fecha de censura  
           # y la vacunación (3º dosis en vacunados con 2 dosis y 1º dosis en no vacunados)
           date_end = fecha + 30,
           date_end = if_else(date_cens < date_end & !is.na(date_cens), date_cens, date_end),
           date_end = if_else(date_vac_1 < date_end & !is.na(date_vac_1) & vacunado == 0, date_vac_1, date_end),
           date_end = if_else(date_vac_3 < date_end & !is.na(date_vac_3) & vacunado == 1, date_vac_3, date_end),
           mes_seg = mes) %>%
    dplyr::select(id, date_start, date_end, date_inf_1, mes_seg, sexo_mas, edad, vacunado, date_vac_1)
  
  try({
    greedymatch <- Match(Tr = x$vacunado, M = 1, X = x[c("sexo_mas", "edad")], exact = TRUE, ties = FALSE)
    a <- x[unlist(greedymatch[c("index.treated", "index.control")]),]
    par <- rep(1:(nrow(a)/2), 2)
    
    bind_cols(par = par, a) %>%
      group_by(par) %>%
      mutate(date_end = min(date_end),
             # creo la variable de resultado
             caso = if_else(date_inf_1 <= date_end & !is.na(date_inf_1), 1, 0)
      ) %>%
      data.frame() %>%
      dplyr::select(-date_vac_1, -date_inf_1)
  }
  
  )
}

# seleccionar la fecha de inicio
fecha_inicio <- dmy("1/5/2021")
fecha_fin <- dmy("3/5/2021")

# seleccionar el número de meses de evolución a evaluar
meses_seg <- 3


# Aplicación de la función 
fechas <- seq.Date(from = fecha_inicio, to = fecha_fin, by = "days")
meses <- 1:meses_seg
fechas_mes <- merge(fechas, meses)
lista <- mapply(prepara_vacunas_mes, fechas_mes$x, fechas_mes$y, SIMPLIFY = FALSE)
base_analisis <- bind_rows(lista[sapply(lista, class) == "data.frame"])


