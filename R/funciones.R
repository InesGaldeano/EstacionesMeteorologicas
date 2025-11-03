#' Carga datos estaciones
#'
#' Esta funcion sirve para descagar y leer datos de las estaciones meteorologicas que contiene el paquete. Toma el id de una estacion que se quieren leer los datos (como primer argumento) y una ruta de archivo (segundo argumento) para descargar los datos en esa ruta, en caso de que aún no esten descargados allí, y leerlos. Devuelve un conjunto de datos (.csv) de esa estacion específica.
#' @param id_estacion  Un string del id de una estacion meteorologica del INTA
#' @param ruta_archivo Un string de la ruta donde se leera el archivo de los datos.
#'
#' @returns
#' Un conjunto de datos
#' @export
#'
#' @examples
#' descargar_leer_estaciones("NH0472", "../estacion2")
descargar_leer_estaciones <- function(id_estacion, ruta_archivo) {
  #    Chequeamos que ambos argumentos sean texto (character). Si no, abortamos con mensaje claro.
  if (!is.character(id_estacion)) {
    cli::cli_abort(c(
      "id_estacion debe ser texto (character).",
      "i" = "Recibí un objeto de tipo {class(id_estacion)[1]}."
    ))
  }

  if (!is.character(ruta_archivo)) {
    cli::cli_abort(c(
      "ruta_archivo debe ser texto (character).",
      "i" = "Recibí un objeto de tipo {class(ruta_archivo)[1]}."
    ))
  }

  # Construir la URL de descarga usando el id de estación (usamos una url base cambiando el id según el argumento pasado)
  url_archivo <- paste0("https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/", id_estacion, ".csv")

  # Chequear si el archivo ya existe localmente
  if (file.exists(ruta_archivo)) {
    cli::cli_inform(c(
      "v" = "El archivo ya existía en {ruta_archivo}.",
      "i" = "Leyendo datos de la estación {id_estacion}"
    ))


  } else {
    # No lo tengo, lo descargo
    cli::cli_inform(c(
      ">" = "Se descargaron datos de la estación {id_estacion}",
      "i" = "Se guardaron en {ruta_archivo}."
    ))
    download.file(url= url_archivo, destfile = ruta_archivo)

    cli::cli_inform(c(
      "v" = "Descarga completa.",
      "i" = "Leyendo datos desde {ruta_archivo}..."
    ))
  }

  # Leer el CSV y devolverlo bajo el nombre de datos_estacion
  datos_estacion <- readr::read_csv(ruta_archivo)
  return(datos_estacion)
}
