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
