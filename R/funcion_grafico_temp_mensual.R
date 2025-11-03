
#' Gráfico de la temperatura abrigo 150cm mensual
#'
#'#' Esta función crea un gráfico de líneas que muestra la temperatura abrigo 150 cm promedio
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
#'
#' @examples
#' grafico_temperatura_mensual(etaciones, c('red', 'blue'), "Grafico temperatura mensual por estacion")
grafico_temperatura_mensual <- function(estaciones,
                                        colores,
                                        titulo = "Temperatura") {

  if (!is.data.frame(estaciones)) {
    stop("El argumento estacion debe ser un data frame o tibble con datos de estaciones.")
  }

  #Calcular promedio mensual de la temperatura de abrigo por estación
  resumen_mensual <- estaciones |>
    dplyr::group_by(id, mes = lubridate::month(fecha)) |>
    dplyr::summarise(
      temp_promedio = mean(temperatura_abrigo_150cm, na.rm = TRUE), .groups = "drop"
    )

  # Colores
  cantidad <- dplyr::n_distinct(resumen_mensual$id)
  estaciones_unicas <- unique(resumen_mensual$id)


  # Si no pasaste suficientes colores, generamos colores aleatorios
  if (length(colores) < cantidad) {
    colores <- sample(colors(), cantidad)
  }

  # Aseguramos que cada estación tenga un color
  names(colores) <- estaciones_unicas

  # 3. Crear el gráfico
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
      color = "Estación"
    ) +
    ggplot2::scale_color_manual(values = colores)
  return(grafico)
}
