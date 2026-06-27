# Hábitos de sueño, consumo de bebidas energéticas y bienestar estudiantil en universitarios e institutos durante el ciclo 2026-I

    Authors

Joel Modesto Cayllahua Hilario 

Salvador Donayre Epifania 

Sebastian Ernesto Chahuara Galdos 

Piero Max Ortiz Villafuerte (Líder) 

# I. Introducción

## I.1 Relevancia

El estilo de vida de los estudiantes universitarios y de institutos se encuentra estrechamente relacionado con diversos factores que afectan su salud física y mental. En la actualidad, el consumo de bebidas energéticas se ha incrementado considerablemente debido a las exigencias académicas, largas jornadas de estudio y hábitos de descanso irregulares. Estas bebidas suelen ser utilizadas como una alternativa para mantenerse despiertos, mejorar la concentración o aumentar el rendimiento académico.

Sin embargo, el consumo frecuente de bebidas energéticas puede generar efectos negativos sobre la salud, especialmente en variables relacionadas con la calidad del sueño, el nivel de estrés y los hábitos cotidianos. Además, factores como la actividad física y la alimentación también pueden influir en el bienestar general de los estudiantes.

Por ello, resulta relevante analizar la relación entre el consumo de bebidas energéticas y diversos aspectos del estilo de vida de estudiantes universitarios y de institutos durante el ciclo académico 2026-1. A través del uso de herramientas estadísticas descriptivas e inferenciales, el presente estudio busca identificar patrones y relaciones entre variables asociadas a la salud y los hábitos estudiantiles.

---

## I.2 Planificación

### I.2.1 Librerías

`[]()library(ggplot2)
[]()library(dplyr)`__

`
Adjuntando el paquete: 'dplyr'`

`The following objects are masked from 'package:stats':

    filter, lag`

`The following objects are masked from 'package:base':

    intersect, setdiff, setequal, union`

`[]()library(readr)
[]()library(modeest)`__

---

### I.2.2 Diagrama de Gantt

`[]()proyecto <- data.frame(
[]()  Tarea = c(
[]()    "Selección del tema",
[]()    "Definición de objetivos",
[]()    "Diseño de encuesta",
[]()    "Aplicación de encuestas",
[]()    "Recolección de datos",
[]()    "Entrega PG1",
[]()    "Limpieza de datos",
[]()    "Análisis descriptivo",
[]()    "Entrega PG2",
[]()    "Análisis inferencial",
[]()    "Redacción informe final",
[]()    "Presentación final"
[]()  ),
[]()
[]()  Responsable = c(
[]()    "Joel",
[]()    "Salvador",
[]()    "Sebastian",
[]()    "Piero",
[]()    "Todos",
[]()    "Joel",
[]()    "Sebastian",
[]()    "Piero",
[]()    "Todos",
[]()    "Joel",
[]()    "Todos",
[]()    "Todos"
[]()  ),
[]()
[]()  FechaInicio = as.Date(c(
[]()    "2026-04-06",
[]()    "2026-04-07",
[]()    "2026-04-08",
[]()    "2026-04-10",
[]()    "2026-04-13",
[]()    "2026-04-15",
[]()    "2026-04-22",
[]()    "2026-04-26",
[]()    "2026-04-29",
[]()    "2026-05-10",
[]()    "2026-05-18",
[]()    "2026-05-23"
[]()  )),
[]()
[]()  FechaFin = as.Date(c(
[]()    "2026-04-07",
[]()    "2026-04-08",
[]()    "2026-04-09",
[]()    "2026-04-12",
[]()    "2026-04-14",
[]()    "2026-04-17",
[]()    "2026-04-25",
[]()    "2026-04-28",
[]()    "2026-05-01",
[]()    "2026-05-17",
[]()    "2026-05-22",
[]()    "2026-05-24"
[]()  ))
[]())
[]()
[]()proyecto$Tarea <- factor(proyecto$Tarea, levels = rev(proyecto$Tarea))
[]()
[]()ggplot(proyecto, aes(
[]()  x = FechaInicio,
[]()  xend = FechaFin,
[]()  y = Tarea,
[]()  yend = Tarea,
[]()  color = Responsable
[]())) +
[]()  geom_segment(linewidth = 7) +
[]()  theme_minimal() +
[]()  labs(
[]()    title = "Planificación del proyecto",
[]()    subtitle = "Cronograma de actividades del ciclo académico 2026-I",
[]()    x = "Cronograma",
[]()    y = "Actividades",
[]()    color = "Responsable"
[]()  ) +
[]()  scale_x_date(
[]()    date_breaks = "7 days",
[]()    date_labels = "%d-%b",
[]()    expand = expansion(mult = c(0.03, 0.03))
[]()  ) +
[]()  theme(
[]()    plot.title = element_text(face = "bold", size = 16),
[]()    plot.subtitle = element_text(size = 11),
[]()    axis.text.x = element_text(
[]()      angle = 45,
[]()      hjust = 1,
[]()      size = 10
[]()    ),
[]()    axis.text.y = element_text(size = 10),
[]()    legend.position = "right"
[]()  )`__

_

---

### I.2.3 Distribución de responsabilidades

La planificación del proyecto fue organizada de manera colaborativa entre los integrantes del grupo:

- **Joel Modesto Cayllahua Hilario:** análisis inferencial y coordinación general.

- **Salvador Donayre Epifania:** definición metodológica e interpretación de resultados.

- **Sebastian Ernesto Chahuara Galdos:** limpieza y validación de datos.

- **Piero Max Ortiz Villafuerte:** análisis descriptivo y visualización de datos.

Las actividades conjuntas incluyeron la aplicación de encuestas, revisión del informe y preparación de la exposición final.

---

## I.3 Objetivos

### I.3.1 Objetivo general

Analizar la relación entre el consumo de bebidas energéticas y diversos factores asociados al estilo de vida y salud de estudiantes universitarios y de institutos durante el ciclo académico 2026-1 mediante herramientas de análisis estadístico.

### I.3.2 Objetivos específicos

- 
Determinar la relación entre la frecuencia de consumo de bebidas energéticas y las horas de sueño diarias en estudiantes universitarios y de institutos durante el ciclo académico 2026-1.

- 
Analizar la relación entre el nivel de estrés autopercibido y la frecuencia de consumo de bebidas energéticas en estudiantes universitarios y de institutos durante el ciclo académico 2026-1.

- 
Evaluar la relación entre el tipo de actividad física realizada y la calidad de sueño autopercibida en estudiantes universitarios y de institutos durante el ciclo académico 2026-1.

---

# II. Datos

## II.1 Población objetivo

La población objetivo del estudio está conformada por estudiantes universitarios y de institutos matriculados durante el ciclo académico 2026-1.

La unidad muestral corresponde a cada estudiante que participa en la encuesta, ya que cada uno representa una observación individual dentro del estudio. Con el fin de fomentar la representatividad de la muestra, se buscará obtener respuestas de estudiantes pertenecientes a diferentes centros de estudio, carreras y ciclos académicos.

---

## II.2 Tipo de muestreo

El estudio utilizará un muestreo no probabilístico por conveniencia, debido a que los participantes serán seleccionados según la accesibilidad y disposición para responder la encuesta virtual distribuida mediante Google Forms.

Este tipo de muestreo permite obtener información de manera rápida y eficiente dentro del contexto estudiantil, aunque presenta limitaciones relacionadas con la generalización de resultados hacia toda la población.

---

## II.3 Recolección de datos

La recolección de datos se realizará mediante una encuesta virtual elaborada en Google Forms. El cuestionario estará compuesto por preguntas relacionadas con hábitos de sueño, consumo de bebidas energéticas, actividad física, nivel de estrés y alimentación.

La encuesta será distribuida a estudiantes universitarios y de institutos durante el ciclo académico 2026-1. Toda la información recolectada será obtenida mediante autorreporte, por lo que los datos dependerán de la percepción y sinceridad de los participantes.

Las preguntas fueron diseñadas de manera clara y sencilla para facilitar la comprensión y reducir posibles errores en las respuestas.

---

## II.4 Variables

### Variables cuantitativas continuas

#### Horas de sueño diarias

- Definición: Cantidad promedio de horas que duerme el estudiante por noche.

- Tipo: Cuantitativa continua.

- Restricción: Valores entre 3 y 12 horas.

- Relación: Objetivo específico 1.

#### Horas de ejercicio por semana

- Definición: Cantidad total de horas dedicadas a actividad física durante los últimos 7 días.

- Tipo: Cuantitativa continua.

- Restricción: Valores entre 1 y 20 horas.

- Relación: Variable de contexto.

---

### Variables cuantitativas discretas

#### Frecuencia de consumo de bebidas energéticas

- Definición: Número de días por semana en que el estudiante consume bebidas energéticas.

- Tipo: Cuantitativa discreta.

- Restricción: Valores enteros entre 0 y 7.

- Relación: Objetivos específicos 1 y 2.

#### Número de unidades de bebida energética por día

- Definición: Cantidad de bebidas energéticas consumidas en un día.

- Tipo: Cuantitativa discreta.

- Restricción: Valores enteros entre 0 y 5 o más.

- Relación: Variable de contexto.

#### Cantidad de desayuno habitual

- Definición: Cantidad de desayuno consumido habitualmente por el estudiante.

- Tipo: Cuantitativa discreta.

- Restricción: Escala de 0 a 4.

- Relación: Variable de contexto.

---

### Variables cualitativas nominales

#### Tipo de actividad física

- Definición: Tipo de actividad física realizada con mayor frecuencia.

- Tipo: Cualitativa nominal.

- Categorías:

Deportes colectivos

- Actividad aeróbica

- Actividad anaeróbica

- Mixta

- No realiza actividad física

- Relación: Objetivo específico 3.

---

### Variables cualitativas ordinales

#### Nivel de estrés autopercibido

- Definición: Percepción del estudiante sobre su nivel de estrés académico.

- Tipo: Cualitativa ordinal.

- Restricción: Escala de 0 a 4.

- Relación: Objetivo específico 2.

#### Calidad de sueño autopercibida

- Definición: Percepción del estudiante sobre la calidad de su descanso nocturno.

- Tipo: Cualitativa ordinal.

- Restricción: Escala de 0 a 4.

- Relación: Objetivo específico 3.

## II.5 Limpieza

### Preparación y depuración de la base de datos

La limpieza de datos se realizó con el propósito de garantizar la consistencia, validez y confiabilidad de la información recolectada mediante la encuesta aplicada a estudiantes universitarios e institutos.

Durante esta etapa se identificaron y corrigieron valores fuera de rango, errores de digitación, inconsistencias lógicas y respuestas incompletas.

---

## Carga de datos

`[]()DF <- read_csv("Encuesta.csv")`_

`Rows: 1133 Columns: 36
── Column specification ────────────────────────────────────────────────────────
Delimiter: ","
chr (17): Marca temporal, 1. Sexo, 5. Carrera universitaria, 10. ¿Cuál de la...
dbl (19): ¿Qué grupo te envió la encuesta?, 2. ¿Cuál es tu peso actual (kg)?...

ℹ Use `spec()` to retrieve the full column specification for this data.
ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.`

---

## Información general del Data Frame

### Cantidad de observaciones

`[]()nrow(DF)`__

`[1] 1133`

### Cantidad de variables

`[]()ncol(DF)`__

`[1] 36`

### Estructura general

`[]()glimpse(DF)`__

`Rows: 1,133
Columns: 36
$ `Marca temporal`                                                                                                                                                    <chr> …
$ `¿Qué grupo te envió la encuesta?`                                                                                                                                  <dbl> …
$ `1. Sexo`                                                                                                                                                           <chr> …
$ `2. ¿Cuál es tu peso actual (kg)?`                                                                                                                                  <dbl> …
$ `3. ¿Cuál es tu estatura en metros?`                                                                                                                                <dbl> …
$ `4. Edad en años cumplidos`                                                                                                                                         <dbl> …
$ `5. Carrera universitaria`                                                                                                                                          <chr> …
$ `6. Ciclo académico`                                                                                                                                                <dbl> …
$ `7. ¿En cuántos cursos te encuentras matriculado actualmente?`                                                                                                      <dbl> …
$ `8. Considerando los últimos 7 días, ¿Cuántas horas en total a la semana dedicaste a realizar actividad física (deporte, gimnasio, caminatas intensas, etc.)?`      <dbl> …
$ `9. ¿Cuántas horas al día en promedio dedico al estudio (de lunes a viernes) sin contar las horas de clases?`                                                       <dbl> …
$ `10. ¿Cuál de las siguientes opciones describe mejor tu alimentación actual?`                                                                                       <chr> …
$ `11. ¿Cuántas comidas principales (ej. desayuno, almuerzo, cena) consumes habitualmente en un día?`                                                                 <dbl> …
$ `12. ¿Cuántas veces a la semana consumes comidas rápidas con alto contenido calórico y grasas (pizzas, hamburguesas, papas fritas, pollo frito, hot dogs, tacos)?`  <chr> …
$ `13. ¿Cuántos días a la semana preparas tu propia comida en casa para traerla a la universidad? (donde 0 = ningún día, 6= de lunes a sábado)`                       <dbl> …
$ `14. ¿Cuántos días a la semana realizas actividad física? (0 = ningún día , 7 = todos los días (de lunes a domingo)`                                                <dbl> …
$ `15. ¿Cómo calificarías tu nivel de actividad física semanal?`                                                                                                      <chr> …
$ `16. ¿Cómo calificarías la calidad de tu sueño en general?`                                                                                                         <chr> …
$ `17. ¿Cuántas horas duermes en promedio por noche?  Considerar desde el momento que se recuestan y dejan de usar los dispositivos móviles hasta que se despiertan.` <dbl> …
$ `18. ¿Cuántas veces al mes consumes alcohol?  ( 0 = ninguna vez, 1, 2, 3, … )`                                                                                      <dbl> …
$ `19. ¿Qué cantidad de desayuno consumes habitualmente?`                                                                                                             <dbl> …
$ `20. ¿Cuántos días a la semana consumes bebidas energéticas? (0 = ningún día de la semana, 1, 2, …, 7)`                                                             <dbl> …
$ `21. Cuando consumes bebidas energéticas, ¿cuántas unidades tomas por día?`                                                                                         <chr> …
$ `22. ¿Cómo calificarías tu nivel de consumo de café o bebidas energizantes para estudiar?`                                                                          <dbl> …
$ `23. ¿Cuál es tu percepción del nivel de estrés?`                                                                                                                   <dbl> …
$ `24. ¿Cuántos litros de agua pura en promedio consumes al día? Ejemplo 1.5`                                                                                         <dbl> …
$ `25. ¿Qué actividades consideras te ayudan a disminuir el nivel de estrés?`                                                                                         <chr> …
$ `26. ¿Cuál es el motivo principal por el que realizas actividad física?`                                                                                            <chr> …
$ `27. Qué tipo de actividad física realizas con mayor frecuencia durante el ciclo académico 2026-I?`                                                                 <chr> …
$ `28. ¿Cómo percibes tu estado de salud general?`                                                                                                                    <chr> …
$ `29. ¿Padeces alguna enfermedad crónica (diabetes, asma, etc.)?`                                                                                                    <chr> …
$ `30. ¿Aproximadamente cuántos soles gastas en promedio al mes en productos que consideras saludables?`                                                              <dbl> …
$ `31. ¿Con qué frecuencia se siente con energía para realizar sus actividades diarias?`                                                                              <chr> …
$ `32. ¿Considera que sus hábitos de alimentación influyen en su estado de salud?`                                                                                    <chr> …
$ `33. ¿Considera que dormir pocas horas afecta su bienestar físico y mental?`                                                                                        <chr> …
$ `34. ¿Con qué frecuencia se siente emocionalmente bien?`                                                                                                            <chr> …`

---

## Renombre y selección de variables

`[]()DFN <- DF %>% rename(
[]()  Edad            = '4. Edad en años cumplidos',
[]()  Sexo            = '1. Sexo',
[]()  CantidadCursos  = '7. ¿En cuántos cursos te encuentras matriculado actualmente?',
[]()  HorasSuenio     = '17. ¿Cuántas horas duermes en promedio por noche?  Considerar desde el momento que se recuestan y dejan de usar los dispositivos móviles hasta que se despiertan.',
[]()  ActividadFisica = '27. Qué tipo de actividad física realizas con mayor frecuencia durante el ciclo académico 2026-I?',
[]()  FrecBebida      = '20. ¿Cuántos días a la semana consumes bebidas energéticas? (0 = ningún día de la semana, 1, 2, …, 7)',
[]()  UnidadBebida    = '21. Cuando consumes bebidas energéticas, ¿cuántas unidades tomas por día?',
[]()  HorasEjercicio  = '8. Considerando los últimos 7 días, ¿Cuántas horas en total a la semana dedicaste a realizar actividad física (deporte, gimnasio, caminatas intensas, etc.)?',
[]()  CanDesayuno     = '19. ¿Qué cantidad de desayuno consumes habitualmente?',
[]()  Carrera         = '5. Carrera universitaria',
[]()  Estres          = '23. ¿Cuál es tu percepción del nivel de estrés?',
[]()  CicloAcademico  = '6. Ciclo académico',
[]()  CalidadSuenio   = '16. ¿Cómo calificarías la calidad de tu sueño en general?',
[]()  GrupoEncuesta = '¿Qué grupo te envió la encuesta?'
[]()) %>% select(
[]()  Edad, Sexo, CantidadCursos, HorasSuenio, ActividadFisica,
[]()  FrecBebida, UnidadBebida, HorasEjercicio, CanDesayuno,
[]()  Carrera, Estres, CicloAcademico, CalidadSuenio, GrupoEncuesta
[]())`__

---

## Snapshot inicial (antes de limpieza)

`[]()snapshot_inicial <- data.frame(
[]()  Variable   = colnames(DFN),
[]()  N_total    = nrow(DFN),
[]()  N_NA       = colSums(is.na(DFN)),
[]()  Porc_NA    = round(colSums(is.na(DFN)) / nrow(DFN) * 100, 2),
[]()  N_completo = colSums(!is.na(DFN))
[]())
[]()snapshot_inicial`__

`                       Variable N_total N_NA Porc_NA N_completo
Edad                       Edad    1133    0       0       1133
Sexo                       Sexo    1133    0       0       1133
CantidadCursos   CantidadCursos    1133    0       0       1133
HorasSuenio         HorasSuenio    1133    0       0       1133
ActividadFisica ActividadFisica    1133    0       0       1133
FrecBebida           FrecBebida    1133    0       0       1133
UnidadBebida       UnidadBebida    1133    0       0       1133
HorasEjercicio   HorasEjercicio    1133    0       0       1133
CanDesayuno         CanDesayuno    1133    0       0       1133
Carrera                 Carrera    1133    0       0       1133
Estres                   Estres    1133    0       0       1133
CicloAcademico   CicloAcademico    1133    0       0       1133
CalidadSuenio     CalidadSuenio    1133    0       0       1133
GrupoEncuesta     GrupoEncuesta    1133    0       0       1133`

### Filas completas e incompletas (inicial)

`[]()# Filas sin ningún NA
[]()sum(complete.cases(DFN))`__

`[1] 1133`

`[]()# Filas con al menos un NA
[]()sum(!complete.cases(DFN))`__

`[1] 0`

---

## Limpieza de datos

`[]()DD <- DFN %>% mutate(
[]()
[]()  # --- Cuantitativas: validación por rango ---
[]()
[]()  # Edad: [17-25] años
[]()  Edad = ifelse(Edad >= 17 & Edad <= 25, Edad, NA),
[]()
[]()  # Horas de sueño: [3-12] horas
[]()  HorasSuenio = ifelse(HorasSuenio >= 3 & HorasSuenio <= 12, HorasSuenio, NA),
[]()
[]()  # Horas de ejercicio: [1-20] horas
[]()  HorasEjercicio = ifelse(HorasEjercicio >= 1 & HorasEjercicio <= 20, HorasEjercicio, NA),
[]()
[]()  # Frecuencia de bebidas: [0-7] días
[]()  FrecBebida = ifelse(FrecBebida >= 0 & FrecBebida <= 7, FrecBebida, NA),
[]()
[]()  # Unidades de bebida: convertir texto a número
[]()  UnidadBebida = readr::parse_number(as.character(UnidadBebida)),
[]()
[]()  # Validar rango [0-5]
[]()  UnidadBebida = ifelse(UnidadBebida >= 0 & UnidadBebida <= 5, UnidadBebida, NA),
[]()  
[]()  
[]()  
[]()  
[]()  # Cantidad de desayuno: [0-4]
[]()  CanDesayuno = as.integer(ifelse(CanDesayuno >= 0 & CanDesayuno <= 4, CanDesayuno, NA)),
[]()  
[]()  # Estrés: [0-4]
[]()  Estres = ifelse(Estres >= 0 & Estres <= 4, Estres, NA),
[]()
[]()  # Cantidad de cursos: [3-8]
[]()  CantidadCursos = ifelse(CantidadCursos >= 3 & CantidadCursos <= 8, CantidadCursos, NA),
[]()
[]()  # Ciclo académico: [1-10]
[]()  CicloAcademico = ifelse(CicloAcademico >= 1 & CicloAcademico <= 10, CicloAcademico, NA),
[]()
[]()  # --- Cualitativas: normalización textual ---
[]()
[]()  # Actividad física
[]()  ActividadFisica = case_when(
[]()    grepl("colectivo|futbol|basket|vóley", ActividadFisica, ignore.case = TRUE) ~ "Deportes colectivos",
[]()    grepl("aeróbica|correr|nadar|bicicleta", ActividadFisica, ignore.case = TRUE) ~ "Actividad aeróbica",
[]()    grepl("anaeróbica|pesas|fuerza", ActividadFisica, ignore.case = TRUE) ~ "Actividad anaeróbica",
[]()    grepl("mixta", ActividadFisica, ignore.case = TRUE) ~ "Mixta",
[]()    grepl("no realizo|no realiza", ActividadFisica, ignore.case = TRUE) ~ "No realiza actividad física",
[]()    TRUE ~ NA_character_
[]()  ),
[]()
[]()  # Carrera universitaria
[]()  Carrera = case_when(
[]()    grepl("ingeniería|tecnología|construcción", Carrera, ignore.case = TRUE) ~ "Ingeniería, Tecnología y Construcción",
[]()    grepl("salud", Carrera, ignore.case = TRUE) ~ "Ciencias de la Salud",
[]()    grepl("administración|negocios|contabilidad", Carrera, ignore.case = TRUE) ~ "Administración, Negocios y Contabilidad",
[]()    grepl("sociales|derecho", Carrera, ignore.case = TRUE) ~ "Ciencias Sociales y Derecho",
[]()    grepl("humanidades|artes|educación", Carrera, ignore.case = TRUE) ~ "Humanidades, Artes y Educación",
[]()    grepl("exactas|ambientales", Carrera, ignore.case = TRUE) ~ "Ciencias Exactas y Ambientales",
[]()    TRUE ~ NA_character_
[]()  ),
[]()
[]()  # Calidad de sueño
[]()  CalidadSuenio = ifelse(
[]()    CalidadSuenio %in% c("Muy mala", "Mala", "Regular", "Buena", "Muy buena"),
[]()    CalidadSuenio, NA
[]()  ),
[]()
[]()  # Sexo
[]()  Sexo = ifelse(Sexo %in% c("Masculino", "Femenino"), Sexo, NA)
[]()
[]()) %>% mutate(
[]()  # NA natural: si no consume bebidas (FrecBebida == 0), UnidadBebida = 0
[]()  UnidadBebida = ifelse(FrecBebida == 0 & is.na(UnidadBebida), 0L, UnidadBebida)
[]())`__

`Warning: There was 1 warning in `mutate()`.
ℹ In argument: `UnidadBebida =
  readr::parse_number(as.character(UnidadBebida))`.
Caused by warning:
! 10 parsing failures.
row col expected                           actual
 90  -- a number No consumo                      
194  -- a number al dia no, pero de ves en cuando
248  -- a number No tomo                         
288  -- a number Agua mineral nada más           
341  -- a number Ga                              
... ... ........ ................................
See problems(...) for more details.`

---

## Conversión de tipos

`[]()DD <- DD %>% mutate(
[]()
[]()  # Cuantitativas discretas → integer
[]()  Edad           = as.integer(Edad),
[]()  CantidadCursos = as.integer(CantidadCursos),
[]()  FrecBebida     = as.integer(FrecBebida),
[]()  UnidadBebida   = as.integer(UnidadBebida),
[]()  CicloAcademico = as.integer(CicloAcademico),
[]()
[]()  # Cualitativas nominales → factor
[]()  Sexo            = factor(Sexo),
[]()  Carrera         = factor(Carrera),
[]()  ActividadFisica = factor(ActividadFisica),
[]()
[]()  # Cualitativas ordinales → factor ordenado
[]()  CanDesayuno = factor(CanDesayuno,
[]()    levels  = c(0, 1, 2, 3, 4),
[]()    labels  = c("Ninguna", "Poca", "Regular", "Bastante", "Mucha"),
[]()    ordered = TRUE),
[]()
[]()  CalidadSuenio = factor(CalidadSuenio,
[]()    levels  = c("Muy mala", "Mala", "Regular", "Buena", "Muy buena"),
[]()    ordered = TRUE),
[]()
[]()  Estres = factor(Estres,
[]()    levels  = c(0, 1, 2, 3, 4),
[]()    labels  = c("Nulo", "Bajo", "Medio", "Alto", "Muy alto"),
[]()    ordered = TRUE),
[]()
[]()  CicloAcademico = factor(CicloAcademico,
[]()    levels  = 1:10,
[]()    ordered = TRUE)
[]())
[]()
[]()# Verificar tipos finales
[]()glimpse(DD)`__

`Rows: 1,133
Columns: 14
$ Edad            <int> 19, 20, 20, 19, 20, 18, 17, 18, 18, 18, 18, 18, 20, 18…
$ Sexo            <fct> Masculino, Masculino, Masculino, Masculino, Masculino,…
$ CantidadCursos  <int> 7, 5, 6, 5, 6, 8, 6, 6, 5, 5, 6, 7, 6, 6, 6, 6, 6, 5, …
$ HorasSuenio     <dbl> 6, 7, 7, 7, 6, 6, 6, 7, 6, 5, 5, 6, 6, 9, 5, 6, 6, 6, …
$ ActividadFisica <fct> Deportes colectivos, Actividad aeróbica, Actividad aer…
$ FrecBebida      <int> 0, 0, 0, 0, 0, 0, 1, 3, 6, 3, 1, 0, 3, 0, 1, 0, 0, 0, …
$ UnidadBebida    <int> 0, 1, 0, 1, 0, 0, 0, 1, 1, 1, 0, 0, 2, 1, 0, 0, 0, 0, …
$ HorasEjercicio  <dbl> 8.0, 5.0, 4.0, 1.0, 2.0, 4.0, 1.0, 6.0, 2.0, 5.0, 2.0,…
$ CanDesayuno     <ord> Bastante, Bastante, Bastante, Bastante, Bastante, Regu…
$ Carrera         <fct> "Ingeniería, Tecnología y Construcción", "Ingeniería, …
$ Estres          <ord> Medio, Medio, Alto, Medio, Alto, Medio, Medio, Alto, M…
$ CicloAcademico  <ord> 2, 5, 3, 5, 7, 3, 3, 2, 3, 3, 3, 3, 3, 1, 3, 5, 3, 3, …
$ CalidadSuenio   <ord> Mala, Buena, Regular, Buena, Regular, Mala, Regular, M…
$ GrupoEncuesta   <dbl> 8, 8, 5, 8, 5, 5, 8, 5, 8, 8, 5, 5, 5, 5, 5, 5, 5, 8, …`

---

## Snapshot final (después de limpieza)

`[]()snapshot_final <- data.frame(
[]()  Variable   = colnames(DD),
[]()  N_total    = nrow(DD),
[]()  N_NA       = colSums(is.na(DD)),
[]()  Porc_NA    = round(colSums(is.na(DD)) / nrow(DD) * 100, 2),
[]()  N_completo = colSums(!is.na(DD))
[]())
[]()snapshot_final`__

`                       Variable N_total N_NA Porc_NA N_completo
Edad                       Edad    1133   63    5.56       1070
Sexo                       Sexo    1133    0    0.00       1133
CantidadCursos   CantidadCursos    1133   61    5.38       1072
HorasSuenio         HorasSuenio    1133   14    1.24       1119
ActividadFisica ActividadFisica    1133    0    0.00       1133
FrecBebida           FrecBebida    1133    0    0.00       1133
UnidadBebida       UnidadBebida    1133    4    0.35       1129
HorasEjercicio   HorasEjercicio    1133    8    0.71       1125
CanDesayuno         CanDesayuno    1133    0    0.00       1133
Carrera                 Carrera    1133    0    0.00       1133
Estres                   Estres    1133    0    0.00       1133
CicloAcademico   CicloAcademico    1133    0    0.00       1133
CalidadSuenio     CalidadSuenio    1133    0    0.00       1133
GrupoEncuesta     GrupoEncuesta    1133    0    0.00       1133`

### Comparación antes y después de la limpieza

`[]()data.frame(
[]()  Variable     = colnames(DFN),
[]()  NA_inicial   = colSums(is.na(DFN)),
[]()  NA_final     = colSums(is.na(DD)),
[]()  NA_generados = colSums(is.na(DD)) - colSums(is.na(DFN))
[]())`__

`                       Variable NA_inicial NA_final NA_generados
Edad                       Edad          0       63           63
Sexo                       Sexo          0        0            0
CantidadCursos   CantidadCursos          0       61           61
HorasSuenio         HorasSuenio          0       14           14
ActividadFisica ActividadFisica          0        0            0
FrecBebida           FrecBebida          0        0            0
UnidadBebida       UnidadBebida          0        4            4
HorasEjercicio   HorasEjercicio          0        8            8
CanDesayuno         CanDesayuno          0        0            0
Carrera                 Carrera          0        0            0
Estres                   Estres          0        0            0
CicloAcademico   CicloAcademico          0        0            0
CalidadSuenio     CalidadSuenio          0        0            0
GrupoEncuesta     GrupoEncuesta          0        0            0`

### Filas completas e incompletas (final)

`[]()sum(complete.cases(DD))`__

`[1] 1010`

`[]()sum(!complete.cases(DD))`__

`[1] 123`

---

## Análisis de sobrerrepresentación

El análisis de sobrerrepresentación muestra que ninguna de las variables evaluadas presenta una concentración superior al 90% en una sola categoría. Esto indica una distribución suficientemente diversa de las respuestas, permitiendo realizar análisis descriptivos e inferenciales sin sesgos importantes derivados de una representación excesiva de un único valor. En consecuencia, la muestra presenta una variabilidad adecuada para la exploración de relaciones entre las variables estudiadas.

`[]()sapply(DD, function(col) {
[]()  frec_max <- max(table(col, useNA = "no"))
[]()  round(frec_max / sum(!is.na(col)) * 100, 2)
[]()})`__

`           Edad            Sexo  CantidadCursos     HorasSuenio ActividadFisica 
          22.90           60.64           34.89           30.56           42.01 
     FrecBebida    UnidadBebida  HorasEjercicio     CanDesayuno         Carrera 
          54.72           52.70           24.00           46.34           62.40 
         Estres  CicloAcademico   CalidadSuenio   GrupoEncuesta 
          40.07           23.21           48.98           17.03 `

## Manejo de valores atípicos

Los valores atípicos fueron evaluados considerando los rangos teóricos definidos para cada variable según el contexto del estudio. No se identificaron valores extremos legítimos fuera de dichos rangos. Los casos detectados correspondieron principalmente a errores de digitación, respuestas inconsistentes o formatos no válidos, por lo que fueron recodificados como `NA` durante el proceso de limpieza.

---

## Política de manejo de nulos y decisión de eliminación

Se conservan todas las filas. Los `NA` por variable se manejan con `na.rm = TRUE` en los descriptores. Solo se eliminan filas donde las variables de identificación básica (`Edad`, `Sexo`, `Carrera`) sean `NA`, ya que sin ellas la observación no es interpretable.

`[]()DF_final <- DD %>%
[]()  filter(!is.na(Edad) & !is.na(Sexo) & !is.na(Carrera))
[]()
[]()# Tamaño final
[]()nrow(DF_final)`__

`[1] 1070`

`[]()# Muestra efectiva final
[]()sum(complete.cases(DF_final))`__

`[1] 1010`

---

## Filtrado del grupo 8

`[]()DF_final <- DD %>%
[]()  filter(GrupoEncuesta == 8) %>%
[]()  filter(!is.na(Edad) & !is.na(Sexo) & !is.na(Carrera))`__

---

## Exportación

`[]()write_csv(DF_final, "Dataframe_grupo8_limpio.csv")`__

# III. Análisis descriptivo

`[]()DF_final <- DF_final %>% rename(HorasSueño = HorasSuenio, 
[]()CalidadSueño = CalidadSuenio)`__

## III. 1. Análisis univariado

Para esta parte del análisis se consideraron las siguiente variables **Frecuencia de consumo de bebidas energéticas** (`FrecBebida`), **Horas de sueño diarias** (`HorasSueño`),**Calidad de sueño autopercibida** (`CalidadSueño`) y **Variable Tipo de Actividad Física** (`ActividadFisica`).

### III. 1. 1 Frecuencia de consume de bebidas

`[]()x <- DF_final$FrecBebida
[]()
[]()cat("Media:            ", round(mean(x), 2), "\n")`__

`Media:             1.1 `

`[]()cat("Mediana:          ", median(x), "\n")`__

`Mediana:           0 `

`[]()cat("Moda:             ", mfv(x), "\n")`__

`Moda:              0 `

`[]()ggplot(DF_final, aes(x = factor(FrecBebida))) +
[]()
[]()  geom_bar(
[]()    fill = "#1565C0",
[]()    color = "white",
[]()    width = 0.7
[]()  ) +
[]()
[]()  geom_text(
[]()    stat = "count",
[]()    aes(label = paste0(
[]()      after_stat(count),
[]()      "\n(",
[]()      round(after_stat(count)/sum(after_stat(count))*100,1),
[]()      "%)"
[]()    )),
[]()    vjust = -0.3,
[]()    size = 3.5
[]()  ) +
[]()
[]()  labs(
[]()    title = "Frecuencia de consumo de bebidas energéticas",
[]()    x = "Días por semana",
[]()    y = "Número de estudiantes"
[]()  ) +
[]()
[]()  theme_minimal()`__

_

La frecuencia de consumo de bebidas energéticas presentó una **media de 1.1**, con **mediana y moda iguales a 0**, evidenciando una fuerte concentración en ausencia de consumo de bebidas energéticas. Se puede apreciar del gráfico que solo el **40.8% consume al menos 1 bebida energética a la semana.** Aunque el consumo promedio es cercano a 1 bebida, algunos estudiantes presentan consumos considerablemente mayores pues se observa un **máximo de consumo de 7 bebidas** mostrando lo vital que pueden llegar a ser este tipo de bebidas para los estudiantes.

### III. 1. 2 Horas de sueño diarias

`[]()x <- DF_final$HorasSueño
[]()
[]()cat("Mediana:         ", median(x, na.rm=TRUE), "\n")`_

`Mediana:          6 `

`[]()ggplot(DF_final, aes(x = HorasSueño)) +
[]()  geom_histogram(
[]()    binwidth = 1,
[]()    fill = "#42A5F5",
[]()    color = "white"
[]()  ) +
[]()  geom_vline(
[]()    xintercept = mean(DF_final$HorasSueño, na.rm = TRUE),
[]()    color = "red",
[]()    linetype = "dashed",
[]()    linewidth = 1
[]()  ) +
[]()  labs(
[]()    title = "Distribución de horas de sueño",
[]()    x = "Horas de sueño",
[]()    y = "Frecuencia"
[]()  ) +
[]()  theme_minimal()`__

`Warning: Removed 2 rows containing non-finite outside the scale range
(`stat_bin()`).`

_

`[]()media_sueño <- mean(DF_final$HorasSueño, na.rm = TRUE)
[]()mediana_sueño <- median(DF_final$HorasSueño, na.rm = TRUE)
[]()sd_sueño <- sd(DF_final$HorasSueño, na.rm = TRUE)
[]()
[]()asimetria_sueño <- round(
[]()  3*(media_sueño - mediana_sueño)/sd_sueño,
[]()  2
[]())
[]()
[]()cat("Coeficiente de asimetría:", asimetria_sueño, "\n")`_

`Coeficiente de asimetría: 0.37 `

La distribución de **HorasSueño** muestra una gran concentración entre **5 y 7 horas de sueño**, siendo este el intervalo donde se agrupa la mayor parte de los estudiantes. La **línea roja correspondiente a la media (6 horas)** se ubica cerca del centro de la distribución, indicando un promedio relativamente representativo del grupo. Asimismo, el histograma presenta una **ligera asimetría positiva (sesgo a la derecha)**, lo que sugiere que, aunque la mayoría mantiene hábitos de sueño cercanos al promedio, **existe un grupo reducido que reporta períodos de descanso más prolongados**, alcanzando valores superiores a **9 horas**. Estos patrones de sueño resultan relevantes para nuestra investigación, ya que las **horas de descanso** podrían relacionarse posteriormente con los **niveles de consumo de bebidas energéticas** y su posible impacto sobre el **bienestar** y **desempeño académico**.

### III. 1. 3 **Calidad de sueño autopercibida**

`[]()cat("Moda:    ", mfv(as.character(DF_final$CalidadSueño)), "\n")`__

`Moda:     Regular `

`[]()t_plot2 <- as.data.frame(table(CalidadSueño = DF_final$CalidadSueño))
[]()t_plot2$Porcentaje <- t_plot2$Freq / sum(t_plot2$Freq) * 100
[]()t_plot2$Acumulado  <- cumsum(t_plot2$Porcentaje)
[]()
[]()ggplot(t_plot2, aes(x = CalidadSueño, y = Acumulado, group = 1)) +
[]()  geom_line(color = "#6A1B9A", linewidth = 1.2) +
[]()  geom_point(color = "#6A1B9A", size = 3) +
[]()  geom_text(aes(label = paste0(round(Acumulado, 1), "%")),
[]()            vjust = -0.8, size = 3.2) +
[]()  labs(title = "Porcentaje acumulado — Calidad de sueño",
[]()       x = "Calidad de sueño", y = "% acumulado") +
[]()  ylim(0, 110) +
[]()  theme_minimal()`__

_

La distribución de **HorasSueño** muestra una alta concentración entre **5 y 7 horas de sueño**, intervalo en el que se agrupa la mayor parte de los estudiantes. La línea roja correspondiente a la **media (aproximadamente 6 horas)** se ubica cerca del centro de la distribución, lo que refleja una tendencia central representativa del comportamiento general de la muestra. Asimismo, el histograma presenta una **ligera asimetría positiva** (coeficiente de asimetría = **0.37**), lo que indica la presencia de algunos estudiantes con períodos de descanso más prolongados, alcanzando valores superiores a **9 horas**. Estos patrones podrían explorarse posteriormente en relación con los niveles de consumo de bebidas energéticas, con el fin de evaluar posibles asociaciones con el bienestar y el desempeño académico.

### III. 1. 4 Tipo de Actividad Física

`[]()ggplot(DF_final, aes(x="", fill=ActividadFisica)) +
[]()
[]()geom_bar(width=1,color="white") +
[]()
[]()coord_polar(theta="y") +
[]()
[]()geom_text(
[]()  stat="count",
[]()  aes(label=paste0(
[]()      round(after_stat(count)/sum(after_stat(count))*100,1),
[]()      "%"
[]()  )),
[]()  position=position_stack(vjust=0.5)
[]()) +
[]()
[]()theme_void()`_

_

Lo primero que resalta del **gráfico de pastel** es la gran concentración de **Actividad aeróbica** con un **46.9%**. Este tipo de actividades suele incluir deportes como football, volley, etc, además de actividades como salir a correr o caminatas largas, siendo estas actividades las más comunes de realizar en la semana. Se observa que un total del **86.2%** de observaciones realiza actividad física, mostrando que esta es importante en su vida, ya sea para bajar su nivel de estrés, pasar tiempo con amigos o por simple entretenimiento.

# III.2 Análisis de interacción

## 1. Frecuencia de bebidas energéticas y horas de sueño

_(Categórica vs numérica)_

`[]()ggplot(
[]()  DF_final,
[]()  aes(
[]()    x = factor(FrecBebida),
[]()    y = HorasSueño,
[]()    fill = factor(FrecBebida)
[]()  )
[]()) +
[]()  geom_boxplot(alpha = 0.8) +
[]()  labs(
[]()    title = "Horas de sueño según frecuencia de consumo de bebidas energéticas",
[]()    x = "Frecuencia de consumo (días por semana)",
[]()    y = "Horas de sueño"
[]()  ) +
[]()  theme_minimal() +
[]()  theme(legend.position = "none")`_

`Warning: Removed 2 rows containing non-finite outside the scale range
(`stat_boxplot()`).`

_

`[]()DF_final %>%
[]()  group_by(FrecBebida) %>%
[]()  summarise(
[]()    Mediana = median(HorasSueño, na.rm = TRUE),
[]()    RIQ = IQR(HorasSueño, na.rm = TRUE)
[]()  )`_

`# A tibble: 8 × 3
  FrecBebida Mediana   RIQ
       <int>   <dbl> <dbl>
1          0     6     1  
2          1     6     1  
3          2     6     2  
4          3     6     2  
5          4     4.5   3  
6          5     5     0  
7          6     6     0.5
8          7     5     6  `

El análisis muestra que las horas de sueño presentan una mediana relativamente estable de 6 horas en la mayoría de los grupos de consumo (0, 1, 2, 3 y 6 días por semana), lo que sugiere que, en términos generales, los patrones centrales de descanso no varían drásticamente entre estos niveles. Sin embargo, los estudiantes que consumen bebidas energéticas 4 y 7 días por semana presentan medianas menores (4.5 y 5 horas, respectivamente), lo que podría indicar una tendencia hacia menores periodos de descanso en niveles más intensivos de consumo. En cuanto a la dispersión, el grupo de 7 días por semana presenta la mayor variabilidad (RIQ = 6), evidenciando una alta heterogeneidad en sus hábitos de sueño, mientras que el grupo de 5 días muestra ausencia de variabilidad (RIQ = 0), reflejando uniformidad en los valores observados. Asimismo, se identifican algunos valores atípicos, principalmente en los grupos de menor consumo, correspondientes a estudiantes con periodos de descanso superiores al promedio.

## 2. Nivel de estrés y horas de sueño

_(Categórica vs numérica)_

`[]()ggplot(
[]()  DF_final,
[]()  aes(
[]()    x = Estres,
[]()    y = HorasSueño,
[]()    fill = Estres
[]()  )
[]()) +
[]()  geom_boxplot(alpha = 0.8) +
[]()  labs(
[]()    title = "Horas de sueño según nivel de estrés",
[]()    x = "Nivel de estrés",
[]()    y = "Horas de sueño"
[]()  ) +
[]()  theme_minimal() +
[]()  theme(legend.position = "none")`__

`Warning: Removed 2 rows containing non-finite outside the scale range
(`stat_boxplot()`).`

_

`[]()DF_final %>%
[]()  group_by(Estres) %>%
[]()  summarise(
[]()    Mediana = median(HorasSueño, na.rm = TRUE),
[]()    RIQ = IQR(HorasSueño, na.rm = TRUE)
[]()  )`_

`# A tibble: 5 × 3
  Estres   Mediana   RIQ
  <ord>      <dbl> <dbl>
1 Nulo         6.5  1.75
2 Bajo         6    1   
3 Medio        6    1   
4 Alto         6    1.75
5 Muy alto     5    1   `

El análisis evidencia una tendencia general decreciente en las horas de sueño conforme aumenta el nivel de estrés. Los estudiantes con nivel de estrés nulo presentan la mediana más alta (6.5 horas), mientras que aquellos con estrés muy alto registran la menor mediana (5 horas), lo que sugiere una posible asociación entre mayores niveles de estrés y menores periodos de descanso. En cuanto a la variabilidad, los niveles nulo y alto presentan la mayor dispersión (RIQ = 1.75), reflejando una mayor heterogeneidad en los hábitos de sueño dentro de estos grupos, mientras que los niveles bajo, medio y muy alto muestran menor variabilidad (RIQ = 1.0). Asimismo, se observan valores atípicos superiores en las categorías medio, alto y muy alto, correspondientes a estudiantes que reportan periodos de descanso considerablemente mayores al comportamiento general de sus respectivos grupos.

---

## 3. Calidad de sueño y horas de sueño

_(Categórica vs numérica)_

`[]()ggplot(
[]()  DF_final,
[]()  aes(
[]()    x = CalidadSueño,
[]()    y = HorasSueño,
[]()    fill = CalidadSueño
[]()  )
[]()) +
[]()  geom_boxplot(alpha = 0.8) +
[]()  labs(
[]()    title = "Horas de sueño según calidad de sueño",
[]()    x = "Calidad de sueño",
[]()    y = "Horas de sueño"
[]()  ) +
[]()  theme_minimal() +
[]()  theme(legend.position = "none")`__

`Warning: Removed 2 rows containing non-finite outside the scale range
(`stat_boxplot()`).`

_

`[]()DF_final %>%
[]()  group_by(CalidadSueño) %>%
[]()  summarise(
[]()    Mediana = median(HorasSueño, na.rm = TRUE),
[]()    RIQ = IQR(HorasSueño, na.rm = TRUE)
[]()  )`_

`# A tibble: 5 × 3
  CalidadSueño Mediana   RIQ
  <ord>          <dbl> <dbl>
1 Muy mala         4    2   
2 Mala             5    1   
3 Regular          6    1   
4 Buena            7    1.25
5 Muy buena       10.5  0.5 `

El análisis evidencia una relación positiva claramente definida entre la calidad de sueño autopercibida y las horas efectivas de descanso. Se observa un incremento progresivo en la mediana de horas de sueño conforme mejora la percepción de calidad, pasando de 4 horas en la categoría “Muy mala” a 10.5 horas en “Muy buena”. Este patrón sugiere que una mayor duración del descanso se asocia con una mejor valoración subjetiva de la calidad del sueño. En cuanto a la dispersión, la categoría “Muy mala” presenta la mayor variabilidad (RIQ = 2.0), reflejando una mayor heterogeneidad en los hábitos de descanso, mientras que “Muy buena” muestra la menor dispersión (RIQ = 0.5), lo que evidencia mayor uniformidad entre los estudiantes de este grupo. Asimismo, se observan algunos valores atípicos en categorías intermedias, correspondientes a estudiantes cuyos patrones de descanso difieren del comportamiento general de su grupo.

---

## 4. Actividad física y calidad de sueño

_(Categórica vs categórica)_

`[]()tabla_af_cs <- as.data.frame(
[]()  table(
[]()    ActividadFisica = DF_final$ActividadFisica,
[]()    CalidadSueño = DF_final$CalidadSueño
[]()  )
[]())
[]()
[]()tabla_af_cs`__

`               ActividadFisica CalidadSueño Freq
1           Actividad aeróbica     Muy mala    3
2          Deportes colectivos     Muy mala    3
3                        Mixta     Muy mala    3
4  No realiza actividad física     Muy mala    4
5           Actividad aeróbica         Mala   16
6          Deportes colectivos         Mala    4
7                        Mixta         Mala    7
8  No realiza actividad física         Mala    7
9           Actividad aeróbica      Regular   30
10         Deportes colectivos      Regular   20
11                       Mixta      Regular    7
12 No realiza actividad física      Regular    7
13          Actividad aeróbica        Buena    9
14         Deportes colectivos        Buena    5
15                       Mixta        Buena    2
16 No realiza actividad física        Buena    0
17          Actividad aeróbica    Muy buena    3
18         Deportes colectivos    Muy buena    0
19                       Mixta    Muy buena    0
20 No realiza actividad física    Muy buena    0`

`[]()ggplot(
[]()  tabla_af_cs,
[]()  aes(
[]()    x = ActividadFisica,
[]()    y = Freq,
[]()    fill = CalidadSueño
[]()  )
[]()) +
[]()  geom_bar(stat = "identity", position = "fill") +
[]()  scale_y_continuous(labels = scales::percent) +
[]()  labs(
[]()    title = "Actividad física y calidad de sueño",
[]()    x = "Actividad física",
[]()    y = "Proporción",
[]()    fill = "Calidad de sueño"
[]()  ) +
[]()  theme_minimal()`__

_

El gráfico evidencia diferencias en la distribución de la calidad de sueño según el tipo de actividad física realizada. Los estudiantes que practican deportes colectivos y actividad aeróbica presentan una mayor concentración en categorías intermedias y favorables, particularmente en “Regular” y “Buena”, lo que sugiere percepciones relativamente más positivas sobre su descanso. En contraste, quienes no realizan actividad física concentran una mayor proporción de respuestas en categorías menos favorables, principalmente “Mala” y “Muy mala”. Asimismo, la categoría “Muy buena” presenta una presencia reducida en todos los grupos, aunque aparece con mayor representación relativa entre quienes realizan actividad física, lo que sugiere una posible asociación entre la práctica física y una mejor percepción de la calidad del sueño.

---

## 5. Actividad física y nivel de estrés

_(Categórica vs categórica)_

`[]()tabla_af_estres <- as.data.frame(
[]()  table(
[]()    ActividadFisica = DF_final$ActividadFisica,
[]()    Estres = DF_final$Estres
[]()  )
[]())
[]()
[]()tabla_af_estres`_

`               ActividadFisica   Estres Freq
1           Actividad aeróbica     Nulo    2
2          Deportes colectivos     Nulo    2
3                        Mixta     Nulo    0
4  No realiza actividad física     Nulo    2
5           Actividad aeróbica     Bajo   10
6          Deportes colectivos     Bajo    6
7                        Mixta     Bajo    0
8  No realiza actividad física     Bajo    0
9           Actividad aeróbica    Medio   15
10         Deportes colectivos    Medio   10
11                       Mixta    Medio    4
12 No realiza actividad física    Medio    1
13          Actividad aeróbica     Alto   22
14         Deportes colectivos     Alto   11
15                       Mixta     Alto    9
16 No realiza actividad física     Alto    8
17          Actividad aeróbica Muy alto   12
18         Deportes colectivos Muy alto    3
19                       Mixta Muy alto    6
20 No realiza actividad física Muy alto    7`

`[]()ggplot(
[]()  tabla_af_estres,
[]()  aes(
[]()    x = ActividadFisica,
[]()    y = Freq,
[]()    fill = Estres
[]()  )
[]()) +
[]()  geom_bar(stat = "identity", position = "fill") +
[]()  scale_y_continuous(labels = scales::percent) +
[]()  labs(
[]()    title = "Actividad física y nivel de estrés",
[]()    x = "Actividad física",
[]()    y = "Proporción",
[]()    fill = "Nivel de estrés"
[]()  ) +
[]()  theme_minimal()`__

_

El gráfico evidencia diferencias en la distribución del nivel de estrés según el tipo de actividad física realizada. Los estudiantes que practican actividad aeróbica y deportes colectivos presentan una distribución más equilibrada entre niveles medios y altos de estrés, con una menor concentración relativa en la categoría “Muy alto”. En contraste, los grupos con actividad mixta y, especialmente, quienes no realizan actividad física, concentran mayores proporciones en las categorías “Alto” y “Muy alto”, lo que sugiere una mayor presencia de estrés elevado en estos estudiantes. Asimismo, las categorías de estrés nulo y bajo presentan una representación reducida en la mayoría de los grupos, siendo particularmente escasas entre quienes no realizan actividad física. En conjunto, los resultados sugieren una posible asociación entre una menor práctica de actividad física y mayores niveles de estrés autopercibido.

## 6. Horas de sueño y frecuencia de bebidas energéticas

_(Numérica vs numérica)_

`[]()ggplot(
[]()  DF_final,
[]()  aes(
[]()    x = HorasSueño,
[]()    y = FrecBebida
[]()  )
[]()) +
[]()  geom_point(alpha = 0.6, color = "#1565C0") +
[]()  geom_smooth(method = "lm", se = FALSE, color = "red") +
[]()  labs(
[]()    title = "Relación entre horas de sueño y consumo de bebidas energéticas",
[]()    x = "Horas de sueño",
[]()    y = "Frecuencia de consumo"
[]()  ) +
[]()  theme_minimal()`_

``geom_smooth()` using formula = 'y ~ x'`

`Warning: Removed 2 rows containing non-finite outside the scale range
(`stat_smooth()`).`

`Warning: Removed 2 rows containing missing values or values outside the scale range
(`geom_point()`).`

_

`[]()cor(DF_final$HorasSueño, DF_final$FrecBebida, use = "complete.obs")`_

`[1] -0.1439912`

El diagrama de dispersión muestra una ligera tendencia inversa entre las horas de sueño y la frecuencia de consumo de bebidas energéticas, evidenciada por la pendiente descendente de la línea de tendencia. El coeficiente de correlación obtenido **(r = -0.144)** indica una asociación negativa débil, lo que sugiere que, en promedio, los estudiantes que duermen menos tienden a registrar una frecuencia ligeramente mayor de consumo. Sin embargo, la amplia dispersión de los puntos evidencia que esta relación no es fuerte, ya que se observan estudiantes con patrones de consumo diversos incluso dentro de rangos similares de horas de sueño. Esto sugiere que, aunque podría existir cierta relación entre ambas variables, otros factores también influyen de manera importante en la frecuencia de consumo de bebidas energéticas.

## IV. Conclusiones

El análisis realizado permitió identificar diversos patrones relevantes relacionados con los hábitos de sueño, el consumo de bebidas energéticas, la actividad física y el nivel de estrés en estudiantes universitarios e institutos durante el ciclo académico 2026-I.

En primer lugar, se observó que la mayoría de los estudiantes presenta un consumo bajo o nulo de bebidas energéticas, aunque existe un grupo reducido con frecuencias elevadas de consumo. Asimismo, las horas de sueño se concentran principalmente entre **5 y 7 horas** diarias, evidenciando hábitos de descanso moderados dentro de la muestra.

Uno de los hallazgos más relevantes fue la relación entre el nivel de estrés y las horas de sueño, observándose que los estudiantes con mayores niveles de estrés tienden a reportar menores periodos de descanso. De manera consistente, se identificó una relación positiva entre la duración del sueño y la calidad de sueño autopercibida, mostrando que quienes duermen más horas tienden a valorar mejor su descanso.

Además, los resultados sugieren que la actividad física podría desempeñar un papel favorable en el bienestar estudiantil, ya que los estudiantes físicamente activos mostraron mejores distribuciones tanto en calidad de sueño como en niveles de estrés, en comparación con quienes no realizan actividad física.

Finalmente, aunque se observó una relación inversa entre las horas de sueño y el consumo de bebidas energéticas, esta asociación fue débil, lo que indica que el consumo no depende exclusivamente del descanso, sino también de otros factores académicos y personales no evaluados en este estudio.

En conjunto, los resultados resaltan la importancia de promover hábitos saludables de descanso y actividad física como factores asociados al bienestar integral de los estudiantes.