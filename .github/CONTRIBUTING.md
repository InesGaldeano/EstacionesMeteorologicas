# Contribuir a EstacionesMeteorologicas

Esta guía describe cómo proponer un cambio en **EstacionesMeteorologicas**.  
Para una discusión más detallada sobre cómo contribuir a este y otros paquetes del *tidyverse*, consultá la [guía de desarrollo y contribución](https://rstd.io/tidy-contrib) y nuestros [principios de revisión de código](https://code-review.tidyverse.org/).

## Corrección de errores tipográficos

Podés corregir errores tipográficos, de ortografía o gramaticales en la documentación directamente desde la interfaz web de GitHub, siempre que los cambios se realicen en el archivo _fuente_.  
Esto generalmente significa que necesitarás editar los [comentarios roxygen2](https://roxygen2.r-lib.org/articles/roxygen2.html) dentro de un archivo `.R`, y no en un archivo `.Rd`.  
Podés encontrar el archivo `.R` que genera el `.Rd` leyendo el comentario en la primera línea.

## Cambios más grandes

Si querés hacer un cambio más grande, es una buena idea primero abrir un *issue* y asegurarte de que alguien del equipo esté de acuerdo en que es necesario.  
Si encontraste un error (*bug*), por favor abrí un *issue* que lo ilustre con un ejemplo mínimo  
[*reprex*](https://www.tidyverse.org/help/#reprex) (esto también te ayudará a escribir una prueba unitaria si es necesario).  
Consultá nuestra guía sobre [cómo crear un buen *issue*](https://code-review.tidyverse.org/issues/) para más consejos.

### Proceso de *pull request*

*   Forkeá el paquete y clonalo en tu computadora. Si nunca hiciste esto antes, recomendamos usar  
    `usethis::create_from_github("maitegomezgarin/EstacionesMeteorologicas", fork = TRUE)`.

*   Instalá todas las dependencias de desarrollo con `devtools::install_dev_deps()`, y luego asegurate de que el paquete pase el `R CMD check` ejecutando `devtools::check()`.  
    Si `R CMD check` no pasa sin errores, es buena idea pedir ayuda antes de continuar.  

*   Creá una rama de Git para tu *pull request* (PR). Recomendamos usar  
    `usethis::pr_init("descripcion-breve-del-cambio")`.

*   Realizá tus cambios, hacé *commit* en Git, y luego creá un PR ejecutando  
    `usethis::pr_push()` y siguiendo las instrucciones en tu navegador.  
    El título de tu PR debe describir brevemente el cambio.  
    El cuerpo de tu PR debe contener `Fixes #número-del-issue`.

*   Para los cambios visibles al usuario, agregá un punto (bullet) al inicio del archivo `NEWS.md` (justo debajo del primer encabezado).  
    Seguí el estilo descrito en <https://style.tidyverse.org/news.html>.

### Estilo de código

*   El nuevo código debe seguir la [guía de estilo del tidyverse](https://style.tidyverse.org).  
    Podés usar [Air](https://posit-dev.github.io/air/) para aplicar este estilo, pero por favor no modifiques el formato del código que no esté relacionado con tu PR.  

*   Usamos [roxygen2](https://cran.r-project.org/package=roxygen2), con [sintaxis Markdown](https://cran.r-project.org/web/packages/roxygen2/vignettes/rd-formatting.html), para la documentación.  

*   Usamos [testthat](https://cran.r-project.org/package=testthat) para las pruebas unitarias.  
    Las contribuciones que incluyen casos de prueba son más fáciles de aceptar.  

## Código de Conducta

Tené en cuenta que el proyecto **EstacionesMeteorologicas** se publica con un  
[Código de Conducta de los Colaboradores](../CODE_OF_CONDUCT.md).  
Al contribuir a este proyecto, aceptás cumplir con sus términos.
