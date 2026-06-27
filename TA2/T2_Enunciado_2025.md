# T2

## Datos

La asesoría en la empresa *Cuytopia* continua.

Para mejorar la recolección de datos, Cuytopia ha implementado un nuevo sistema basado en celulares inteligentes y un aplicativo sencillo con plantilla estructurada. Una vez implementado este sistema, que incluye más personas trabajando en el equipo y jornadas de recolección más largas, se organizó una prueba piloto con tres equipos que incluían a los participantes originales y a tres personas adicionales (dos atrapadores y un medidor).

En esta tarea, usted trabajará con un archivo consolidado que ya contiene todo el conjunto de datos listo para su análisis. No es necesario haber realizado tareas previas.

El conjunto de datos está disponible [aquí](https://drive.google.com/file/d/1VS-VXidG_ym7HAQnsDYjhAxjuqcUwUeG/view?usp=sharing). Debe descargarlo a su computador y cargarlo a R usando la función `read_csv` de la librería `readr`.

## Costos

La recolección original costó 10100 soles desglosados de la siguiente manera:

- **Recolección**: 5400 soles. Desglosados en tres equipos con un atrapador, un medidor y un registrador a 600 soles por empleado a lo largo de toda la recolección.
- **Consumibles**: 700 soles. Desglosados en consumibles, almuerzos y transporte a lo largo de toda la recolección.
- **Limpieza de datos**: 4000 soles Desglosados en digitalización y limpieza de la muestra original.

El piloto de la nueva herramienta de recolección costó 10100 soles desglosados de la siguiente manera:

- **Recolección**: 5400 soles. Desglosados en tres equipos con tres atrapadores, dos medidores y un registrador a 300 soles por empleado a lo largo de toda la recolección.
- **Consumibles**: 300 soles. Desglosados en consumibles, almuerzos y transporte a lo largo de toda la recolección.
- **Instrumentos de recolección**: 3200 soles. Desglosados en tres celulares inteligentes a 800 soles cada uno y desarrollo de una herramienta de recolección de datos por 800 soles.
- **Capacitación**: 600 soles. Desglosados en tres sesiones para enseñar el uso del celular y el aplicativo de recolección de datos.
- **Limpieza de datos**: 300 soles.
- **Coordinación**: 300 soles. Bono a Enrique Dibol, uno de los analistas de *TI* para la planificación de capacitaciones, selección de equipos, levantamiento de requerimientos para el aplicativo y comunicación entre las distintas partes necesarias para llevar a cabo el piloto.

## Libreta de códigos

Los datos en la tabla han sido procesados y limpiados de acuerdo a la versión actualizada de la libreta de códigos.

> **Libreta de códigos (Versión 3.01 del 28 de abril de 2024)**
>
> - `Raza`: debería ser una de las especificadas en la siguiente lista; `abisinio`, `andino`, `híbrido`, `peruano`, `americano`, `angora`, `rex` o `skinny`.
> - `Sexo`: debería ser `hembra` o `macho`.
> - `Color`: debería ser uno de los especificados en la siguiente lista; `negro`, `tricolor`, `blanco`, `pintado`, `rojizo`, `marrón`, `crema`, `marrón oscuro`, `gris` o `rosa`
> - `Peso`: en gramos, debería ser un número positivo con dos decimales, no mayor que 3000 gramos.
> - `Largo`: en centímetros enteros, debería ser un número entero positivo entre 10 y 50 centímetros.
> - `Cintura`: en centímetros enteros, debería ser un número entero positivo entre 10 y 30 centímetros.
> - `Talla`: debería ser una de las especificadas en la siguiente lista; `flaco`, `sano`, `gordo`, `obeso`
> - `Edad`: en meses enteros, debería ser un número entero positivo entre 8 y 72 meses.
> - `Reporte`: una cadena de caracteres registrada directamente por la *Cuyinator 3000*.
> - `Equipo`: un entero positivo de la lista; `1`, `2` o `3`.
> - `Fecha`: un objeto tipo POSIXct siguiendo el formato YYYY-MM-DD HH:MM:SS donde YYYY es el año con cuatro dígitos, MM es el mes con dos dígitos y DD es el día con dos dígitos. HH es la hora en formato militar, es decir, formato de 24 horas, usando dos dígitos, MM es el número de minutos y SS el número de segundos, con los decimales que la *Cuyinator 3000* haya determinado apropiados.
> - `Error`: una variable lógica que vale `TRUE` cuando el Status retornado por la *Cuyinator 3000* sea *Err* y `FALSE` en caso contrario.
> - `Tiempo`: el tiempo en minutos (no necesariamente enteros) entre el registro de cuyes consecutivos en una misma máquina.

> **Recordar**
>
> - Es importante recordar que los cuyes de color `tricolor` tienen pelaje blanco, negro y marrón.
> - Es importante recordar que los cuyes de color `pintado` tienen pelaje blanco y marrón.


Instrucciones:

Lea el enunciadoLinks to an external site. de la tarea.
Este laboratorio requiere del archivo  Cuy_InicialYPiloto.csvLinks to an external site. descárguelo en su directorio de trabajo.
Use la función read_csv de la librería readr para cargar los datos.
Por compatibilidad con la tarea, es conveniente que llame DF a la tabla con los datos leídos. 
Una persona que no presente tendrá 0 en la evaluación.
Esta permitido retroceder.
La evaluación se presenta en cualquier momento y desde cualquier lugar, pero es individual.
Todas las respuestas numéricas que deben tomar valores enteros se deben responder de manera exacta sin decimales.
Las respuestas numéricas que pueden tomar valores decimales se deben responder redondeadas correctamente a dos decimales.
Recomendamos usar la función round con el parámetro digits = 2, en R, para redondear correctamente.
El separador decimal es el punto.
 

Usted presenta la siguiente evaluación a sabiendas que está sujeto a las normas establecidas por UTEC sobre honestidad y buena conducta académica. Cualquier desvío de las mismas será reportado a las instancias pertinentes para su evaluación y penalidad correspondiente. 

¡Buena suerte!