# Gráfico de la temperatura abrigo 150cm mensual

Esta función crea un gráfico de líneas que muestra la temperatura abrigo
150 cm promedio mensual registrada por cada estación meteorológica. A
partir del un conjunto de datos (primer argumento) calcula el promedio
de temperatura por mes y genera una visualización comparando las
estaciones, en caso de haber más de una, con distintos colores.

## Usage

``` r
grafico_temperatura_mensual(
  estaciones,
  colores,
  titulo = "Temperatura mensual"
)
```

## Arguments

- estaciones:

  Un conjunto de datos (csv) con datos de una o más estaciones del INTA

- colores:

  String o vector con colores en ingles para cada estacion

- titulo:

  String del titulo del gráfico, sino hay uno por defecto.

## Value

Un gráfico de lineas

## Details

Si no se proporcionan suficientes colores, la función asigna colores
aleatorios automáticamente

## Examples

``` r
estaciones <- data.frame(
  id = c("NH0910", "NH0910"),
  fecha = as.Date(c("2020-01-01", "2020-02-01")),
  temperatura_abrigo_150cm = c(10, 12)
)
grafico_temperatura_mensual(estaciones, colores = c("red"), titulo = "Ejemplo")
```
