test_that("tabla_resumen_temperatura: valida el tipo de entrada", {
  expect_error(
    tabla_resumen_temperatura(123),
    "data\\.frame|tibble"
  )
})

test_that("funciona bien con datos correctos", {
  datos_estacion <-  data.frame(
    id = c("NH0910", "NH0910", "NH0472", "NH0472"),
    fecha = as.Date(c("2020-01-01", "2020-02-01", "2020-01-01", "2020-02-01")),
    temperatura_abrigo_150cm = c(10, 12, 20, 22),
    temperatura_abrigo_150cm_maxima = c(15, 14, 25, 23),
    temperatura_abrigo_150cm_minima = c(8, 9, 18, 19)
  )


  resultado <- tabla_resumen_temperatura(datos_estacion)
  expect_true(is.data.frame(resultado))  # Devuelve una tabla
  expect_equal(nrow(resultado), 2)       # Una fila por estación
  expect_true(all(c("id","promedio_temperatura","desvio_estandar","temp_max","temp_min") %in% names(resultado))) # Tiene las columnas esperadas
})
