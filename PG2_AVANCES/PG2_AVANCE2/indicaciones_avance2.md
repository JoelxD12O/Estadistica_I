# Avance 2 - PG2: Indicaciones y Rúbrica

## Indicaciones Generales

- La presentación oral de todo el trabajo será en la clase de laboratorio (la misma modalidad).
- La presentación oral del **SEGUNDO AVANCE** (corrección del primero) se hace bajo la misma forma que el primero, es decir, con sus asistentes.
- La fecha máxima de entrega de este avance 2 PG2 Oral es el **26/06 11 am**.
- Colgar su presentación final en la tarea "Oral" para que el profesor de laboratorio descargue el trabajo y lo corrija. (El profesor de laboratorio corrige los dos últimos ítems de la rúbrica de la PG2).
- Se trabaja con la muestra efectiva (observaciones limpias de toda la sección).
- Las variables aleatorias deben ser distintas.

## Consideraciones

- Pueden usar pestañas en sus láminas pero cada pestaña contará como una lámina más.
- La presentación debe tener a lo mucho **12 láminas en total** y tiene que caber todo en la pantalla.
- **Se va a penalizar** si hacen la lámina demasiado grande como una sábana.
- **Se va a penalizar** el documento si tiene archivo dentro de otro.
- En el archivo comprimido no pueden haber carpetas; al descomprimir el archivo deben quedar todos sus componentes en el directorio de trabajo.
- **Incluir los avances solicitados y los detalles de estadística descriptiva (PG1) que guiaron su decisión.**

---

## Rúbrica: Variables Discretas (3 pts)

| Nivel | Descripción | Puntos |
|-------|-------------|--------|
| Correcto | Estudian a fondo dos variables discretas, presentando evidencia correcta, numérica y gráfica de sus planteamientos en función de sus datos. | 3 pts |
| Mayormente correcto | Estudian a fondo dos variables discretas, presentando evidencia correcta, numérica o gráfica de sus planteamientos en función de sus datos. | 2 pts |
| Mayormente incorrecto | Estudian a fondo una variable discreta, presentando evidencia correcta, numérica o gráfica de sus planteamientos en función de sus datos. | 1 pt |
| Incorrecto | Tienen errores en ambos planteamientos de variables discretas. | 0 pts |

### Contexto importante

> **LAS VARIABLES ALEATORIAS SON DIFERENTES DE LAS VARIABLES DE ESTUDIO.**
> En las variables aleatorias DISCRETAS, las **variables de estudio** sirven como input para el cálculo de parámetros.
> Las variables de estudio pueden ser de cualquier tipo (categórica nominal o ordinal; numérica discreta o continua).

### Ejemplo de desarrollo — Variable Discreta

**Variable de Estudio:** Nivel socio-económico de una persona residente en San Borja (A, B, C, D, E) — ORDINAL

**Paso 1:** Construir el caso de ejemplo para el desarrollo de la variable aleatoria discreta.

Se requiere conocer cuál es la probabilidad de encontrar a la primera persona de nivel socioeconómico A en la 10ma entrevista de las personas que participaron en el estudio.

**Paso 2:** Construir la distribución teórica con la **VARIABLE ALEATORIA DISCRETA BIEN DEFINIDA**.

X: Número de personas que participaron en el estudio hasta encontrar a la primera con un nivel socioeconómico A

$$X \sim Geom(p)$$

Donde:
- p = P(Éxito)
- P = P(Seleccionar una persona del estudio que sea del nivel socioeconómico A) = 200/1200

**Paso 3:** Describir la distribución teórica del caso.

- P(X=1): Probabilidad de que la primera persona entrevistada sea la primera del nivel socioeconómico A
- P(X=2): Probabilidad de que la segunda persona entrevistada sea la primera del nivel socioeconómico A
- ...
- P(X=1200): Probabilidad de que la persona 1200° entrevistada sea la primera del nivel socioeconómico A

**Paso 4:** Describir las propiedades de la distribución teórica.

E(X), V(X), SD(X), ...

**Paso 5:** Responder el caso.

```r
P(X=10) = dgeom(9, p)
```

**Paso 6:** Agregar un ejemplo de distribución acumulada.

P(X<20): Probabilidad de que sea necesario entrevistar menos de 20 personas para encontrar a la primera de nivel socioeconómico A.

```r
P(X<20) = pgeom(...)
```

---

## Rúbrica: Variables Continuas (3 pts)

| Nivel | Descripción | Puntos |
|-------|-------------|--------|
| Correcto | Estudian a fondo dos variables continuas, presentando evidencia correcta, numérica y gráfica de sus planteamientos en función de sus datos. | 3 pts |
| Mayormente correcto | Estudian a fondo dos variables continuas, presentando evidencia correcta, numérica o gráfica de sus planteamientos en función de sus datos. | 2 pts |
| Mayormente incorrecto | Estudian a fondo una variable continua, presentando evidencia correcta, numérica o gráfica de sus planteamientos en función de sus datos. | 1 pt |
| Incorrecto | Tienen errores en ambos planteamientos de variables continuas. | 0 pts |

### Ejemplo de desarrollo — Variable Continua

**Paso 1:** Seleccionar una variable de estudio del tipo cuantitativa continua → **IMC**

**Paso 2:** Validar su distribución (gráficos y propiedades).

**Paso 3:** Describir las propiedades:

- **Caso 1:** No se aproxima a ninguna de las 3 distribuciones de probabilidad de variables continua. Entonces, para el ejemplo, supondremos que IMC se distribuye como una exponencial con parámetro lambda = 0.02.
- **Caso 2:** Considerando que la variable de estudio se aproxima a una normal con parámetros (mu, sigma).

E(X), V(X), SD(X), etc.

**Paso 4:** Construir un ejemplo:

$$IMC \sim exp(\lambda)$$

Se desea saber cuál es la probabilidad de que más del 30% de las personas del estudio tengan sobrepeso (25, 30).

```r
P(25 <= IMC <= 30) = pexp(..)
```
