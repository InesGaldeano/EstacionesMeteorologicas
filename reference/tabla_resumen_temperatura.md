# Tabla resumen datos meteorológicos

Esta funcion toma un conjunto de datos con datos de una o más
estaciones, y devuelve una tabla con datos sobre la temperatura abrigo
150 cm de esa/as estacion/es (el promedio, desvio estandar, temperatura
máxima, y temperatura mínima)

## Usage

``` r
tabla_resumen_temperatura(estacion)
```

## Arguments

- estacion:

  conjunto de datos (csv) del INTA.

## Value

tabla resumen

## Examples

``` r
df <- data.frame(
  id = c("NH0910", "NH0910"),
  temperatura_abrigo_150cm = c(10, 12),
  temperatura_abrigo_150cm_maxima = c(15, 14),
  temperatura_abrigo_150cm_minima = c(8, 9)
)
tabla_resumen_temperatura(df)
#> # A tibble: 1 × 5
#>   id     promedio_temperatura desvio_estandar temp_max temp_min
#>   <chr>                 <dbl>           <dbl>    <dbl>    <dbl>
#> 1 NH0910                   11            1.41       15        8
```
