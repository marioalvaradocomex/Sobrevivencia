# SP-1637 Análisis de Supervivencia

# Tarea 1

Se entrega el martes 15 de setiembre a las 5:00 p.m. en mediación virtual.

Se le da el archivo `encfec2010.dta`, que está en formato STATA. Es un extracto de variables de la Encuesta Nacional de Salud Sexual y Reproductiva 2010 en Costa Rica. Para poder hacer los análisis, va a tener que explorar cuáles son las etiquetas de cada código de las variables en cuestión.

## Variables

| Variable | Etiqueta |
| --- | --- |
| `region` | región |
| `zona` | zona |
| `r201a` | día nacimiento del seleccionado |
| `r201b` | mes nacimiento del seleccionado |
| `r201c` | año nacimiento del seleccionado |
| `r202` | edad en años cumplidos del seleccionado |
| `r204` | sexo de la persona entrevistada |
| `ednivel` | nivel escolar más alto alcanzado por el seleccionado |
| `r209` | ¿cuál es su religión? |
| `r215` | ¿ha estado usted casada o viviendo con una pareja una o varias? |
| `r216m` | ¿en qué mes comenzaron a vivir juntos usted y su primer pareja? |
| `r216a` | ¿en qué año comenzaron a vivir juntos usted y su primer pareja? |
| `id` | identificador |

El profesor les asignará en clase las regiones que les toca analizar. El objetivo es analizar la edad a la primera unión conyugal. Seleccionando la submuestra de esa región, conteste las siguientes preguntas:

## Preguntas

1. Con las variables de mes y año de nacimiento y de mes y año de inicio de la convivencia, cree una variable que sea igual a la edad, con decimales, de la primera unión conyugal. Además, con la variable `r215` cree una variable de evento que sea igual a 1 si ha estado casada o viviendo con una pareja, y que sea igual a 0 si nunca ha convivido. Para las personas con el 0 en la variable de evento, asigne la edad de la entrevista (`r202`, aunque esté en números enteros) a la variable de edad de la primera unión conyugal. En otras palabras, para los censurados, el tiempo equivale a la edad a la entrevista. Asigne `NA` si hay valores de ignorado en las variables de año y mes de nacimiento y año y mes de la primera unión. **(15 ptos.)**

2. Cree un gráfico de Kaplan-Meier para su submuestra y conteste cuál es aproximadamente la edad mediana a la primera unión, y cuál es aproximadamente la proporción de personas que nunca se unen. **(15 ptos.)**

3. A partir de la tabla de vida con `survfit`, conteste:

   a. Cuál es aproximadamente la edad mediana a la primera unión. **(5 ptos.)**

   b. Cuál es el percentil 25 de la edad a la primera unión. **(5 ptos.)**

   c. Cree una curva de hazards con suficiente grado de suavizamiento. **(5 ptos.)**

4. Recodifique la variable `ednivel` en tres categorías: 1. Primaria o menos, 2. Secundaria académica o técnica, 3. Postsecundaria, creando la variable `educacion`. Excluya los ignorados codificándolos como `NA`. **(5 ptos.)**

5. Recodifique la variable `r209` en tres categorías: 1. Católica, 2. Otra religión, 3. No creyente. Excluya los ignorados codificándolos como `NA`. **(5 ptos.)**

6. Haga una matriz de gráficos de Kaplan-Meier con la comparación de las curvas de supervivencia por: sexo, educación, religión y zona, incluyendo el `pvalue` de la prueba log-rank. ¿Entre cuáles grupos hay diferencias significativas en la curva de supervivencia? **(25 ptos.)**

7. Verifique los valores de los `pvalues` generados con los gráficos, con la función `survdiff`. Escriba las 4 hipótesis nulas correspondientes. **(10 ptos.)**

8. Busque cómo hacer la prueba Peto con la función `survdiff` para las diferencias por sexo y conteste si se llega a la misma conclusión que con la prueba log-rank. **(10 ptos.)**
