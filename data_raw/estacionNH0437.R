estacion5_url <- 'https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0437.csv'
estacion5_archivo <- '../NH0437.csv'

estacionNH0437 <- download.file(url=estacion5_url, destfile= estacion5_archivo)

usethis::use_data(estacionNH0437, overwrite = TRUE)
# guarda los datos en la carpeta data (luego de crearla)
