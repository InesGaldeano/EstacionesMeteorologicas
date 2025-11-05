estacion4_url <- 'https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0098.csv'
estacion4_archivo <- '../NH0098.csv'

estacionNH0098 <- download.file(url=estacion4_url, destfile= estacion3_archivo)

usethis::use_data(estacionNH0098, overwrite = TRUE)
# guarda los datos en la carpeta data (luego de crearla)
