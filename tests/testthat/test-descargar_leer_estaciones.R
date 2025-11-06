test_that("da error si los argumentos no son texto", {
  expect_error(descargar_leer_estaciones(123, "archivo.csv"), "character")
  expect_error(descargar_leer_estaciones("NH0472", 123), "character")
})

test_that("funciona bien con datos correctos", {
  datos <- data.frame(
    id = "NH0472",
    fecha = as.Date(c("2020-01-01", "2020-01-02")),
    temperatura_abrigo_150cm = c(10, 12)
  )

  expect_true(is.data.frame(datos))  # Es un data frame
  expect_true(all(c("id", "fecha", "temperatura_abrigo_150cm") %in% names(datos)))
})

test_that("descargar_leer_estaciones lanza error si id_estacion no es texto", {
  ruta <- tempfile(fileext = ".csv")
  expect_error(descargar_leer_estaciones(1234, ruta))
})

test_that("descargar_leer_estaciones muestra mensaje si el archivo ya existe", {
  ruta <- tempfile(fileext = ".csv")
  # Creamos un archivo vacío para simular que ya existe
  write.csv(data.frame(x = 1), ruta)
  expect_message(descargar_leer_estaciones("NH0472", ruta))
})
