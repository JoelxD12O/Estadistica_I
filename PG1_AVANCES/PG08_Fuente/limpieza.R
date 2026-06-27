library(dplyr)
library(readr)

DF <- read_csv("Encuesta.csv", show_col_types = FALSE)

DFN <- DF %>% rename(
  Edad            = '4. Edad en años cumplidos',
  Sexo            = '1. Sexo',
  CantidadCursos  = '7. ¿En cuántos cursos te encuentras matriculado actualmente?',
  HorasSuenio     = '17. ¿Cuántas horas duermes en promedio por noche?  Considerar desde el momento que se recuestan y dejan de usar los dispositivos móviles hasta que se despiertan.',
  ActividadFisica = '27. Qué tipo de actividad física realizas con mayor frecuencia durante el ciclo académico 2026-I?',
  FrecBebida      = '20. ¿Cuántos días a la semana consumes bebidas energéticas? (0 = ningún día de la semana, 1, 2, …, 7)',
  UnidadBebida    = '21. Cuando consumes bebidas energéticas, ¿cuántas unidades tomas por día?',
  HorasEjercicio  = '8. Considerando los últimos 7 días, ¿Cuántas horas en total a la semana dedicaste a realizar actividad física (deporte, gimnasio, caminatas intensas, etc.)?',
  CanDesayuno     = '19. ¿Qué cantidad de desayuno consumes habitualmente?',
  Carrera         = '5. Carrera universitaria',
  Estres          = '23. ¿Cuál es tu percepción del nivel de estrés?',
  CicloAcademico  = '6. Ciclo académico',
  CalidadSuenio   = '16. ¿Cómo calificarías la calidad de tu sueño en general?',
  GrupoEncuesta   = '¿Qué grupo te envió la encuesta?'
) %>% select(
  Edad, Sexo, CantidadCursos, HorasSuenio, ActividadFisica,
  FrecBebida, UnidadBebida, HorasEjercicio, CanDesayuno,
  Carrera, Estres, CicloAcademico, CalidadSuenio, GrupoEncuesta
)

DD <- DFN %>% mutate(
  Edad           = ifelse(Edad >= 17 & Edad <= 25, Edad, NA),
  HorasSuenio    = ifelse(HorasSuenio >= 3 & HorasSuenio <= 12, HorasSuenio, NA),
  HorasEjercicio = ifelse(HorasEjercicio >= 1 & HorasEjercicio <= 20, HorasEjercicio, NA),
  FrecBebida     = ifelse(FrecBebida >= 0 & FrecBebida <= 7, FrecBebida, NA),
  UnidadBebida   = readr::parse_number(as.character(UnidadBebida)),
  UnidadBebida   = ifelse(UnidadBebida >= 0 & UnidadBebida <= 5, UnidadBebida, NA),
  CanDesayuno    = as.integer(ifelse(CanDesayuno >= 0 & CanDesayuno <= 4, CanDesayuno, NA)),
  Estres         = ifelse(Estres >= 0 & Estres <= 4, Estres, NA),
  CantidadCursos = ifelse(CantidadCursos >= 3 & CantidadCursos <= 8, CantidadCursos, NA),
  CicloAcademico = ifelse(CicloAcademico >= 1 & CicloAcademico <= 10, CicloAcademico, NA),
  ActividadFisica = case_when(
    grepl("colectivo|futbol|basket|vóley", ActividadFisica, ignore.case = TRUE) ~ "Deportes colectivos",
    grepl("aeróbica|correr|nadar|bicicleta", ActividadFisica, ignore.case = TRUE) ~ "Actividad aeróbica",
    grepl("anaeróbica|pesas|fuerza", ActividadFisica, ignore.case = TRUE) ~ "Actividad anaeróbica",
    grepl("mixta", ActividadFisica, ignore.case = TRUE) ~ "Mixta",
    grepl("no realizo|no realiza", ActividadFisica, ignore.case = TRUE) ~ "No realiza actividad física",
    TRUE ~ NA_character_
  ),
  Carrera = case_when(
    grepl("ingeniería|tecnología|construcción", Carrera, ignore.case = TRUE) ~ "Ingeniería, Tecnología y Construcción",
    grepl("salud", Carrera, ignore.case = TRUE) ~ "Ciencias de la Salud",
    grepl("administración|negocios|contabilidad", Carrera, ignore.case = TRUE) ~ "Administración, Negocios y Contabilidad",
    grepl("sociales|derecho", Carrera, ignore.case = TRUE) ~ "Ciencias Sociales y Derecho",
    grepl("humanidades|artes|educación", Carrera, ignore.case = TRUE) ~ "Humanidades, Artes y Educación",
    grepl("exactas|ambientales", Carrera, ignore.case = TRUE) ~ "Ciencias Exactas y Ambientales",
    TRUE ~ NA_character_
  ),
  CalidadSuenio = ifelse(
    CalidadSuenio %in% c("Muy mala", "Mala", "Regular", "Buena", "Muy buena"),
    CalidadSuenio, NA
  ),
  Sexo = ifelse(Sexo %in% c("Masculino", "Femenino"), Sexo, NA)
) %>% mutate(
  UnidadBebida = ifelse(FrecBebida == 0 & is.na(UnidadBebida), 0L, UnidadBebida)
)

DD <- DD %>% mutate(
  Edad           = as.integer(Edad),
  CantidadCursos = as.integer(CantidadCursos),
  FrecBebida     = as.integer(FrecBebida),
  UnidadBebida   = as.integer(UnidadBebida),
  CicloAcademico = as.integer(CicloAcademico),
  Sexo            = as.character(Sexo),
  Carrera         = as.character(Carrera),
  ActividadFisica = as.character(ActividadFisica),
  CanDesayuno    = dplyr::case_when(
    CanDesayuno == 0 ~ "Ninguna", CanDesayuno == 1 ~ "Poca",
    CanDesayuno == 2 ~ "Regular", CanDesayuno == 3 ~ "Bastante",
    CanDesayuno == 4 ~ "Mucha",   TRUE ~ NA_character_
  ),
  CalidadSuenio  = as.character(CalidadSuenio),
  Estres         = dplyr::case_when(
    Estres == 0 ~ "Nulo",  Estres == 1 ~ "Bajo",
    Estres == 2 ~ "Medio", Estres == 3 ~ "Alto",
    Estres == 4 ~ "Muy alto", TRUE ~ NA_character_
  )
)

DF_limpio <- DD %>%
  filter(!is.na(Edad) & !is.na(Sexo) & !is.na(Carrera))

write_csv(DF_limpio, "Encuesta_limpia.csv")
cat("Filas exportadas:", nrow(DF_limpio), "\n")
cat("Archivo: Encuesta_limpia.csv\n")
