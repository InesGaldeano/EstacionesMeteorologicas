
#' Tabla resumen datos meteorológicos
#'
#' Esta funcion toma un conjunto de datos con datos de una o más estaciones, y devuelve una tabla con datos sobre la temperatura abrigo 150 cm de esa/as estacion/es (el promedio, desvio estandar, temperatura máxima, y temperatura mínima)
#' @param estacion conjunto de datos (csv) del INTA.
#'
#' @returns tabla resumen
#' @export
#'
#' @examples
#' tabla_resumen_temperatura(estacion1)
tabla_resumen_temperatura <- function(estacion) {
  if (!is.data.frame(estacion)) {
    stop("El argumento datos_estaciones debe ser un data.frame o tibble con los datos de las estaciones.")
  }
  # Resumen
  resumen <- estacion |>
    dplyr::group_by(id) |>
    dplyr::summarise(
      promedio_temperatura = mean(temperatura_abrigo_150cm, na.rm = TRUE),
      desvio_estandar = sd(temperatura_abrigo_150cm, na.rm = TRUE),
      temp_max = max(temperatura_abrigo_150cm_maxima, na.rm = TRUE),
      temp_min = min(temperatura_abrigo_150cm_minima, na.rm = TRUE)
    )

  return(resumen)
}

