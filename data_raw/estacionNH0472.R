
estacion1_url <- 'https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0472.csv'
estacion1_archivo <- '../NH0472.csv'

estacionNH0472 <- download.file(url=estacion1_url, destfile= estacion1_archivo)

usethis::use_data(estacionNH0472, overwrite = TRUE)
# guarda los datos en la carpeta data (luego de crearla)
