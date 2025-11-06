
#' Gráfico de la temperatura abrigo 150cm mensual
#'
#' Esta función crea un gráfico de líneas que muestra la temperatura abrigo 150 cm promedio
#' mensual registrada por cada estación meteorológica. A partir del un conjunto
#' de datos (primer argumento) calcula el promedio de temperatura por mes y genera
#' una visualización comparando las estaciones, en caso de haber más de una, con distintos colores.
#'
#' Si no se proporcionan suficientes colores, la función asigna colores
#' aleatorios automáticamente
#' @param estaciones Un conjunto de datos (csv) con datos de una o más estaciones del INTA
#' @param colores String o vector con colores en ingles para cada estacion
#' @param titulo String del titulo del gráfico, sino hay uno por defecto.
#'
#' @returns Un gráfico de lineas
#' @export
#' @importFrom grDevices colors
#' @examples
#' estaciones <- data.frame(
#'   id = c("NH0910", "NH0910"),
#'   fecha = as.Date(c("2020-01-01", "2020-02-01")),
#'   temperatura_abrigo_150cm = c(10, 12)
#' )
#' grafico_temperatura_mensual(estaciones, colores = c("red"), titulo = "Ejemplo")
grafico_temperatura_mensual <- function(estaciones,
                                        colores,
                                        titulo = "Temperatura mensual") {

  if (!is.data.frame(estaciones)) {
    stop("El argumento estaciones debe ser un data frame o tibble con datos de estaciones.")
  }

  resumen_mensual <- estaciones |>
    dplyr::group_by(id, mes = lubridate::month(fecha)) |>
    dplyr::summarise(
      temp_promedio = mean(temperatura_abrigo_150cm, na.rm = TRUE), .groups = "drop"
    )

  cantidad <- dplyr::n_distinct(resumen_mensual$id)
  estaciones_unicas <- unique(resumen_mensual$id)


  if (length(colores) < cantidad) {
    colores <- sample(colors(), cantidad)
  }

  names(colores) <- estaciones_unicas

  grafico <- ggplot2::ggplot(
    resumen_mensual,
    ggplot2::aes(
      x = mes,
      y = temp_promedio,
      color = id,
      group = id
    )
  ) +
    ggplot2::geom_line() +
    ggplot2::labs(
      title = titulo,
      x = "Mes",
      y = "Temperatura promedio abrigo 150 cm",
      color = "Estacion"
    ) +
    ggplot2::scale_color_manual(values = colores)
  return(grafico)
}
