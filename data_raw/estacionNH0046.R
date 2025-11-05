
estacion3_url <- 'https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0046.csv'
estacion3_archivo <- '../NH0046.csv'

estacionNH0046 <- download.file(url=estacion3_url, destfile= estacion3_archivo)

usethis::use_data(estacionNH0046, overwrite = TRUE)
# guarda los datos en la carpeta data (luego de crearla)
