# Datos meteorológicos diarios de la estación NH0472

Registra variables climáticas medidas por la estación meteorológica
NH0472, perteneciente al Instituto Nacional de Tecnología Agropecuaria
(INTA) y disponibles en el Sistema de Información y Gestión Agropecuaria
(SIGA).

## Usage

``` r
ESTACION_NH0472
```

## Format

Un tibble con varias filas (una por día) y 30 variables:

- id:

  identificador de la estación meteorológica (NH0472)

- fecha:

  fecha de la observación (año-mes-día)

- temperatura_abrigo_150cm:

  temperatura promedio del aire medida a 150 cm (°C)

- temperatura_abrigo_150cm_maxima:

  temperatura máxima diaria a 150 cm (°C)

- temperatura_abrigo_150cm_minima:

  temperatura mínima diaria a 150 cm (°C)

- temperatura_intemperie_5cm_minima:

  temperatura mínima al aire libre a 5 cm (°C)

- temperatura_intemperie_50cm_minima:

  temperatura mínima al aire libre a 50 cm (°C)

- temperatura_intemperie_150cm_minima:

  temperatura mínima al aire libre a 150 cm (°C)

- temperatura_suelo_5cm_media:

  temperatura promedio del suelo a 5 cm (°C)

- temperatura_suelo_10cm_media:

  temperatura promedio del suelo a 10 cm (°C)

- humedad_suelo:

  humedad del suelo (% o valor relativo)

- precipitacion_pluviometrica:

  precipitación acumulada (mm)

- granizo:

  presencia de granizo (0 = no, 1 = sí)

- nieve:

  presencia de nieve (0 = no, 1 = sí)

- heliofania_efectiva:

  horas efectivas de sol (h)

- heliofania_relativa:

  porcentaje de heliofanía relativa (%)

- tension_vapor_media:

  presión o tensión de vapor promedio (hPa o equivalente)

- humedad_media:

  humedad relativa promedio (%)

- humedad_media_8_14_20:

  promedio de humedad a las 8, 14 y 20 h (%)

- rocio_medio:

  temperatura media del punto de rocío (°C)

- duracion_follaje_mojado:

  duración del follaje mojado (h)

- velocidad_viento_200cm_media:

  velocidad promedio del viento a 200 cm (km/h)

- direccion_viento_200cm:

  dirección del viento a 200 cm (grados o cardinal)

- velocidad_viento_1000cm_media:

  velocidad promedio del viento a 10 m (km/h)

- direccion_viento_1000cm:

  dirección del viento a 10 m (grados o cardinal)

- velocidad_viento_maxima:

  velocidad máxima del viento (km/h)

- presion_media:

  presión atmosférica media (hPa)

- radiacion_global:

  radiación solar global (MJ/m² o W/m²)

- radiacion_neta:

  radiación neta (MJ/m² o W/m²)

- evaporacion_tanque:

  evaporación medida en tanque (mm)

- evapotranspiracion_potencial:

  evapotranspiración potencial estimada (mm)

- profundidad_napa:

  profundidad de la napa freática (m)

- horas_frio:

  cantidad de horas de frío acumuladas (h)

- unidad_frio:

  unidades de frío acumuladas (valor relativo o índice)

## Source

Instituto Nacional de Tecnología Agropecuaria (INTA) – Sistema de
Información y Gestión Agropecuaria (SIGA): https://siga.inta.gob.ar

## Details

Incluye datos diarios de temperatura, humedad, viento, presión,
radiación, precipitación y otras variables meteorológicas.
