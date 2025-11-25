# Carga datos estaciones

Esta funcion sirve para descagar y leer datos de las estaciones
meteorologicas que contiene el paquete. Toma el id de una estacion que
se quieren leer los datos (como primer argumento) y una ruta de archivo
(segundo argumento) para descargar los datos en esa ruta, en caso de que
aún no esten descargados allí, y leerlos. Devuelve un conjunto de datos
(.csv) de esa estacion específica.

## Usage

``` r
descargar_leer_estaciones(id_estacion, ruta_archivo)
```

## Arguments

- id_estacion:

  Un string del id de una estacion meteorologica del INTA

- ruta_archivo:

  Un string de la ruta donde se leera el archivo de los datos.

## Value

Un conjunto de datos

## Examples

``` r
# Ejemplo de uso (no se ejecuta en este entorno, se debe usar ruta compatible con computadora)
# descargar_leer_estaciones("NH0472", "ruta_archivo.csv")
```
