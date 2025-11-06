#' Carga datos estaciones
#'
#' Esta funcion sirve para descagar y leer datos de las estaciones meteorologicas que contiene el paquete. Toma el id de una estacion que se quieren leer los datos (como primer argumento) y una ruta de archivo (segundo argumento) para descargar los datos en esa ruta, en caso de que aún no esten descargados allí, y leerlos. Devuelve un conjunto de datos (.csv) de esa estacion específica.
#' @param id_estacion  Un string del id de una estacion meteorologica del INTA
#' @param ruta_archivo Un string de la ruta donde se leera el archivo de los datos.
#'
#' @returns
#' Un conjunto de datos
#' @export
#' @importFrom utils download.file
#' @examples
#' # Ejemplo de uso (no se ejecuta en este entorno, se debe usar ruta compatible con computadora)
#' # descargar_leer_estaciones("NH0472", "ruta_archivo.csv")
descargar_leer_estaciones <- function(id_estacion, ruta_archivo) {
  if (!is.character(id_estacion)) {
    cli::cli_abort(c(
      "id_estacion debe ser texto (character).",
      "i" = "Recibi un objeto de tipo {class(id_estacion)[1]}."
    ))
  }

  if (!is.character(ruta_archivo)) {
    cli::cli_abort(c(
      "ruta_archivo debe ser texto (character).",
      "i" = "Recibi un objeto de tipo {class(ruta_archivo)[1]}."
    ))
  }


  url_archivo <- paste0("https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/", id_estacion, ".csv")

  if (file.exists(ruta_archivo)) {
    cli::cli_inform(c(
      "v" = "El archivo ya existia en {ruta_archivo}.",
      "i" = "Leyendo datos de la estacion {id_estacion}"
    ))


  } else {
    cli::cli_inform(c(
      ">" = "Se descargaron datos de la estacion {id_estacion}",
      "i" = "Se guardaron en {ruta_archivo}."
    ))
    download.file(url= url_archivo, destfile = ruta_archivo)

    cli::cli_inform(c(
      "v" = "Descarga completa.",
      "i" = "Leyendo datos desde {ruta_archivo}..."
    ))
  }

  datos_estacion <- readr::read_csv(ruta_archivo)
  return(datos_estacion)
}
