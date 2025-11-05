test_that("da error si el argumento no es un data frame", {
  expect_error(
    grafico_temperatura_mensual(123, colores = c("red", "blue")),
    "data frame|tibble"
  )
})

test_that("devuelve un ggplot con datos", {
  datos <-  data.frame(
    id = c("NH0910", "NH0910", "NH0472", "NH0472"),
    fecha = as.Date(c("2020-01-01", "2020-02-01", "2020-01-01", "2020-02-01")),
    temperatura_abrigo_150cm = c(10, 12, 20, 22)
  )

  grafico <- grafico_temperatura_mensual(datos, colores = c("red", "blue"))

  expect_true("ggplot" %in% class(grafico))  # Es un objeto ggplot
  expect_true(!is.null(grafico$data))        # Tiene datos
})
