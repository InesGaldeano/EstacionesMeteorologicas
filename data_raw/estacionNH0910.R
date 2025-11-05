
estacion2_url <- 'https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0910.csv'
estacion2_archivo <- '../NH0910.csv'

estacionNH0910 <- download.file(url=estacion2_url, destfile= estacion2_archivo)

usethis::use_data(estacionNH0910, overwrite = TRUE)
# guarda los datos en la carpeta data (luego de crearla)

