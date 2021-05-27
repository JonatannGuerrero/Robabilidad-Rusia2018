# Probabilidad de Clasificatoria Rusia 2018 ⚽📈
Este codigo es un pequeño programa desarrollado en Matlab lo que realiza es calcular la probabilidad de las eliminatorias a Rusia 2018.

**Problema que da paso al desarrollo del codigo.**

Una vez jugada la fecha 15 de la eliminatoria, la tabla de posiciones al mundial
de Rusia 2018 se encontraba de la siguiente manera:

| ⚽ | Puntos  | PG | PE | PP | GF | GC  |
| ------------ | :------------: | :------------: | :------------: | :------------: | :------------: | :------------: |
| Brasil    | 36 | 11 | 3 | 1  | 37 | 10 |
| Colombia  | 25 | 7  | 4 | 4  | 18 | 15 |
| Uruguay   | 24 | 7  | 3 | 5  | 26 | 17 |
| Chile     | 23 | 7  | 2 | 6  | 24 | 22 |
| Argentina | 23 | 6  | 5 | 4  | 15 | 14 |
| Perú      | 21 | 6  | 3 | 6  | 24 | 24 |
| Paraguay  | 21 | 6  | 3 | 6  | 16 | 21 |
| Ecuador   | 20 | 6  | 2 | 7  | 23 | 22 |
| Bolivia   | 10 | 3  | 1 | 11 | 13 | 34 |
| Venezuela | 7  | 1  | 4 | 10 | 17 | 34 |

En ese momento (agosto 31 de 2017) faltaban 3 fechas por jugar:                

| 5 de Septiembre       |
| :------------:        |
| Bolivia - Chile       |
| Colombia - Brasil     |
| Ecuador - Perú        |
| Argentina - Venezuela |
| Paraguay - Uruguay    | 


| 5 de Octubre          |
| :------------:        |
| Bolivia - Brasil      |
| Venezuela - Uruguay   |
| Chile - Ecuador       |
| Colombia - Paraguay   |
| Argentina - Perú      |


| 10 de Octubre        |
| :------------:       |
| Ecuador - Argentina  |
| Perú - Colombia      |
| Paraguay - Venezuela |
| Brasil - Chile       |
| Uruguay - Bolivia    |

Si suponemos que en los partidos de estas 3 fechas ningún equipo marca más
de 5 goles:

a. Calcule la probabilidad de clasificar al mundial para cada uno de los
países.

b. Calcule la probabilidad de que Colombia clasifique 2do.

c. Calcule la probabilidad de que Colombia clasifique 3ro.

d. Calcule la probabilidad de que Colombia clasifique 4to.

e. Calcule la probabilidad de que Colombia clasifique 5to.

**Formas como se determinan las posiciones**

La clasificación de cada equipo en su grupo viene determinada por los criterios
siguientes:

- Mayor número de puntos obtenidos en todos los partidos de grupo.

- Diferencia de goles en todos los partidos de grupo.

- Mayor número de goles marcados en todos los partidos de grupo.

Si dos o más equipos obtienen el mismo resultado conforme a los tres criterios
antes mencionados, sus lugares se determinarán de la siguiente forma:

- Si los equipos siguen empatados se realiza un sorteo (lanza una moneda).