# Interpretaciones para la redacción: supervivencia de exportaciones de Costa Rica a Asia

Notas en bullets, sección por sección, con los números de `Codigo_Trabajo_Final_2.html` (versión con un solo efecto aleatorio de subpartida).
Convención: HR = razón de riesgos (Cox y cloglog); OR = razón de odds (logit); RT = razón de tiempos (AFT).

---

## Antes de redactar: pendientes

  - Sección 7: cambiar "y se reincorporan en un análisis de sensibilidad" por algo como "y se mencionan como limitación".

---

## 2. Cobertura de la base

- **La base:** 18 925 registros anuales con exportaciones positivas, de 2000 a 2025, hacia 9 mercados asiáticos. No hay ceros, faltantes ni duplicados.
- **2026:** se excluyen sus 1 147 registros por ser un año incompleto.
- **Nombres de país:** KOR y TWN venían escritos de varias formas en la fuente; se uniformizaron por código ISO.
- **Salto de cobertura en 2025:**
  - Hay más registros que en cualquier año previo.
  - Pakistán pasa de 3 registros en 2024 a 160 en 2025.
  - Japón (133 → 225) y Corea (98 → 136) también saltan.
  - Probablemente es un cambio en la fuente o en el registro, no un cambio real en el comercio.
  - Consecuencia: 733 episodios empiezan en 2025, 158 de ellos de Pakistán. Esos episodios no aportan transiciones a los modelos, pero inflan las censuras en los descriptivos.
- **Montos muy pequeños:**
  - Mediana del valor anual por relación: 3 600 USD.
  - El 25 % de los registros es menor a 124 USD y el 39 % menor a 1 000 USD.
  - Muchos son flujos esporádicos (muestras, envíos menores). Esto ayuda a explicar la altísima tasa de salida en el primer año. Va en limitaciones.

## 4–5. Episodios y disponibilidad de información

- **Totales:** 6 118 relaciones producto-destino que generan 10 629 episodios, con 9 328 interrupciones y 1 301 censuras.
- **Por destino:**
  - Taiwán: 678 relaciones, 1 071 episodios.
  - China: 1 120 relaciones, 2 104 episodios.
  - Otros siete mercados: 4 320 relaciones, 7 454 episodios.
- **Reingresos:** hay más episodios que relaciones, así que los reingresos son frecuentes. Varios episodios de la misma relación no son independientes, y eso justifica los errores robustos y las fragilidades.
- **Peso de cada grupo:** "Otros" concentra el 70 % de los episodios. Por eso la comparación se hace en tasas y no en conteos.
- **Taiwán tiene pocas censuras** (68, frente a 211 de China): pocas relaciones siguen activas al cierre de 2025.

## 6. Riesgo bruto por período (descriptivo, sin ajustar)

- **Taiwán:** 59.8 % (2000-2007) → **42.3 %** (2008-2010) → 55.4 % (2011-2025).
- **China:** 54.1 % → 54.9 % → **50.2 %**.
- **Otros:** 50.2 % → 49.4 % → 54.1 %.
- **Lectura:**
  - Taiwán no muestra el aumento de riesgo que cabría esperar tras perder las relaciones diplomáticas en 2007. Al contrario, su riesgo cae en 2008-2010 y luego vuelve a niveles cercanos a los de antes.
  - China baja su riesgo después de 2011, mientras el resto de Asia lo sube.
- **Advertencias:**
  - Las tasas no ajustan por la edad de los episodios: un período con más episodios jóvenes tiene más salidas mecánicamente.
  - 2008-2010 es una ventana corta, con solo 175 transiciones de Taiwán.
  - Estas cifras incluyen los episodios con inicio desconocido.

## 7. Muestra de análisis

- **Exclusiones:** se excluyen los 277 episodios activos en 2000, porque su edad está mal medida (censura por la izquierda). También salen los 733 iniciados en 2025, que no tienen ninguna transición observable.
- **Muestra final:** 9 619 episodios, 16 498 transiciones anuales y 9 061 interrupciones.

## 8. Tabla de vida

- **Supervivencia corta:** el 73.6 % de los episodios se interrumpe después de su primer año.
  - Supervivencia: 26.4 % al año 1; 13.9 % al año 2; 5.8 % al año 5; 3.3 % al año 10.
  - Mediana de duración: **1 año**.
- **Dependencia negativa de la duración:** el riesgo cae de forma monótona con la edad, de 73.6 % a 47.3 %, 33.2 %, 24.4 % y 17.2 % en las edades 1 a 5. Sobrevivir los primeros años es la barrera principal; quien la supera tiene mucha más probabilidad de seguir.
- **Agrupación para el modelo discreto:**
  - Edades 1 a 5 individuales: los riesgos difieren claramente y hay suficientes eventos.
  - 6-9: riesgo parecido, alrededor de 10-13 %; 139 eventos en total.
  - 10+: riesgo de 6.2 % con solo 54 eventos. Separarlo más produciría estimaciones inestables.
- **Comparación con la literatura:** es consistente con Besedeš y Prusa y con Hess y Persson, que encuentran duraciones medianas de 1-2 años en datos desagregados a 6 dígitos.

## 9. Kaplan-Meier por destino

- **Supervivencia al año 1:** Taiwán 22.3 %, China 28.7 %, Otros 26.3 %. Taiwán tiene la peor supervivencia inicial, unos 6 puntos menos que China.
- **Las curvas convergen después:**
  - Al año 5: Taiwán 5.2 %, China 6.2 %, Otros 5.8 %.
  - Al año 10: 3.5 %, 3.7 % y 3.2 %.
  - La diferencia está casi toda en el primer año.
- **Medianas:** 1 año en los tres grupos.
- **Log-rank:** χ² = 7.91, 2 gl, p = 0.019.
  - Por pares, con corrección de Holm, solo Taiwán y China difieren (p = 0.015).
  - Taiwán frente a Otros da p = 0.083, y China frente a Otros p = 0.117.
- **Efecto de la corrección:** con la tabla de vida corregida, la evidencia es bastante más débil que en la versión anterior (antes χ² = 19.6, p < 0.001, y Taiwán difería de los dos grupos). Vale mencionarlo como parte de la depuración metodológica.
- **Carácter nominal:** el log-rank supone episodios independientes, y no lo son. Además no ajusta por edad, período ni producto, así que es solo descriptivo.

## 10. Cox con covariables que cambian en el tiempo

Especificación: efectos fijos de año (controlan choques comunes a los 9 mercados); interacciones de diferencias en diferencias; errores robustos agrupados por subpartida. Los HR son *marginales* (promedio poblacional).

- **Valor inicial:** HR 0.922 por unidad de log (IC 0.915-0.930). Duplicar el valor inicial reduce el riesgo de interrupción en 5.5 %. Los episodios que empiezan con más volumen duran más, igual que en la literatura.
- **Reingreso:** HR 0.736 (0.702-0.772). Un episodio que es un reingreso tiene 26 % menos riesgo que un primer episodio. Es consistente con aprendizaje o con costos hundidos ya pagados.
- **Sector industrial:** HR 1.09 (1.00-1.19, p = 0.038). El riesgo es 9 % mayor que en el agrícola, en el límite de la significancia.
- **Mercados frente a Hong Kong:**
  - Pakistán tiene un riesgo 38 % mayor (HR 1.38) e India 8 % mayor.
  - Japón, Corea y Malasia tienen entre 8 % y 10 % menos riesgo.
  - Ojo: con las interacciones en el modelo, `iso_chrTWN` (1.13, ns) e `iso_chrCHN` (0.97, ns) son las diferencias de Taiwán y China **antes de 2008**, no en todo el período.
- **TW:RD = 0.741 (0.567-0.968, p = 0.028):**
  - En 2008-2010, el riesgo de Taiwán bajó 26 % respecto a lo que cambió en los otros mercados, con 2000-2007 como referencia.
  - Va en contra de la hipótesis de que la ruptura diplomática perjudicara las exportaciones a Taiwán.
- **TW:TLC = 1.31 (1.03-1.68, p = 0.030):**
  - Es un cambio *adicional* desde 2011 respecto a 2008-2010, no respecto a 2000-2007.
  - El efecto neto después de 2011 frente a antes de 2008 es 0.741 × 1.311 ≈ **0.97**: Taiwán vuelve a su nivel relativo previo.
  - Lectura: la reducción de 2008-2010 fue transitoria y se revierte cuando entra en vigor el TLC con China.
- **CN:RD = 1.23 (1.01-1.50, p = 0.040):** en 2008-2010, recién establecidas las relaciones, el riesgo de China subió 23 % en términos relativos. Una posible explicación es que muchas relaciones nuevas exploratorias tienen alta salida.
- **CN:TLC = 0.826 (0.715-0.955, p = 0.010):**
  - Desde 2011, el riesgo de China baja 17 % respecto a 2008-2010.
  - Neto frente a antes de 2008: 1.231 × 0.826 ≈ **1.02**, sin cambio.
- **Supuesto de riesgos proporcionales:**
  - `cox.zph` no se puede calcular con los efectos de año, porque la matriz queda singular. Se evalúa sobre la versión con efectos principales de RD y TLC, cuyas interacciones son prácticamente iguales (TW:TLC 1.31 frente a 1.29).
  - Las cuatro interacciones de interés cumplen el supuesto (p entre 0.23 y 0.63).
  - El test global rechaza (p = 0.002), sobre todo por RD y TLC como efectos principales, `log_valor_inicial` (p = 0.007), país (p = 0.03) e `interrupcion_previa` (p = 0.03).
  - Con 16 498 filas, el test detecta desviaciones pequeñas.
  - Que los efectos del calendario cambien con la edad es esperable, y en el modelo reportado los absorben los efectos de año.
  - En limitaciones: el efecto del valor inicial probablemente cambia con la edad del episodio.
- **Empates:** con el 73.6 % de las salidas en la edad 1, el Cox (aun con Efron) es una aproximación. Esto justifica que el modelo principal sea el de tiempo discreto.

## 11. Modelos binomiales mixtos en tiempo discreto

HR / OR *condicionales* a la fragilidad de la subpartida.

- **Fragilidad de relación:** se probó `(1 | id_relacion)` además de la de subpartida. Su varianza se estimó en cero en los dos enlaces y el ajuste quedó singular.
  - Se elimina. Los efectos fijos son idénticos con y sin ese término, y el modelo final ya no es singular.
  - Cómo redactarlo: "se probó una fragilidad a nivel de relación producto-destino; su varianza se estimó en cero, por lo que la dependencia entre episodios repetidos queda capturada por la fragilidad de la subpartida y por el indicador de reingreso".
- **Fragilidad de subpartida:** desviación estándar de 0.653 en logit y 0.359 en cloglog.
  - En términos interpretables: entre dos subpartidas elegidas al azar con las mismas covariables, la razón de odds de salida mediana es **1.86** (*median odds ratio*); en cloglog, la HR mediana es 1.41.
  - Hay heterogeneidad no observada importante entre productos, del mismo orden que el efecto de pasar de la edad 1 a la 2.
- **Elección del enlace:** el logit ajusta mejor (AIC 17 028 frente a 17 070; BIC 17 383 frente a 17 424). Una diferencia de 42 puntos es clara.
  - El cloglog se reporta porque da HR comparables con el Cox.
  - Con `nAGQ = 0` el AIC es aproximado; conviene confirmarlo con Laplace.
- **Riesgo base por edad:**
  - Fuerte dependencia negativa de la duración, aun controlando la fragilidad.
  - OR frente a la edad 1: 0.49 (edad 2), 0.34, 0.26, 0.19, 0.14 (6-9) y 0.08 (10+).
  - HR en cloglog: 0.63 a 0.10.
  - Clave: como la caída se mantiene después de controlar la heterogeneidad no observada, no es solo un artefacto de selección. Los episodios se vuelven genuinamente más estables con la edad.
- **Covariables, en logit / cloglog:**
  - Valor inicial: OR 0.86 / HR 0.91 por unidad de log. Duplicar el valor baja las odds de salida 10 % (6 % en el riesgo).
  - Reingreso: OR 0.64 / HR 0.74.
  - Sector industrial: OR 1.33 / HR 1.18, significativo en los dos.
  - Mercados: Pakistán (OR 3.00 / HR 1.88) e India (1.40 / 1.18) son más riesgosos que Hong Kong; Japón y Corea, menos (alrededor de 0.83-0.89).
  - Taiwán y China antes de 2008: no difieren significativamente de Hong Kong.
- **Efectos condicionales frente a marginales:** los efectos del modelo mixto son algo mayores que los del Cox (industrial 1.18 frente a 1.09). Es lo esperado, porque los efectos condicionales a la fragilidad son más grandes que los marginales. No es una contradicción.
- **Interacciones, en logit / cloglog:**
  - TW:RD: OR 0.53 (0.31-0.91) / HR 0.69 (0.50-0.97). Reducción relativa del riesgo de Taiwán en 2008-2010.
  - TW:TLC: OR 1.76 (1.15-2.71) / HR 1.42 (1.07-1.88). Aumento relativo desde 2011 respecto a 2008-2010.
  - CN:RD: OR 1.27 (0.86-1.86) / HR 1.23 (0.97-1.56). Misma dirección que en el Cox, pero no significativo.
  - CN:TLC: OR 0.78 (0.58-1.05) / HR 0.83 (0.68-1.00). En el límite.
- **Efecto combinado** (después de 2011 frente a antes de 2008, relativo a los otros mercados):
  - Taiwán: OR 0.94 (0.64-1.39) / HR 0.98 (0.79-1.23), p > 0.7.
  - China: OR 0.99 (0.74-1.31) / HR 1.02 (0.85-1.21), p > 0.8.
  - **Ningún destino muestra un cambio neto de largo plazo.**
- **Consistencia entre métodos:** el Cox (marginal) y el cloglog mixto (condicional) dan HR casi idénticos en las interacciones (TW:RD 0.74 frente a 0.69; TW:TLC 1.31 frente a 1.42; CN:RD 1.23 y 1.23; CN:TLC 0.83 y 0.83). El patrón es robusto a la especificación. Lo que cambia es la significancia de China, más débil en el modelo mixto.

### Conclusión de fondo (para la discusión)

- El patrón es de **cambios transitorios en 2008-2010 que se revierten desde 2011**, no de efectos permanentes.
  - Taiwán mejora su supervivencia relativa justo después de la ruptura diplomática.
  - China la empeora justo después del establecimiento de relaciones.
  - Desde 2011, ambos vuelven a su posición relativa previa.
- **Precauciones para la discusión:**
  - 2008-2010 coincide con la crisis financiera global. Los efectos de año eliminan los choques comunes, pero no una exposición a la crisis distinta en cada mercado.
  - La ventana es de 3 años, con pocas transiciones para Taiwán (175).
  - Con la variable TLC = 1 desde 2011 no se puede separar el efecto del TLC de cualquier otra cosa que cambió en China o Taiwán ese año.
  - La interpretación es asociativa, no causal. Diferencias en diferencias supone tendencias paralelas, y no se verificaron.
- **Hipótesis que se pueden plantear (no comprobadas):**
  - Reacomodo de exportadores de Taiwán hacia relaciones más consolidadas.
  - Entrada de exportadores nuevos y exploratorios a China en 2008-2010, con alta salida.
  - Composición de productos.

## Anexo. Modelos paramétricos

- **Mejor ajuste:** la loglogística (AIC 18 610), seguida de la lognormal (20 771), la Weibull (26 662) y la exponencial (27 912).
  - La exponencial, que supone riesgo constante, es la peor, en línea con la fuerte dependencia de la duración de la tabla de vida.
  - Las distribuciones que permiten un riesgo no monótono (log-logística, lognormal) ajustan mucho mejor que la Weibull, cuyo riesgo es monótono.
- **Razones de tiempos (loglogística, errores robustos por subpartida):**
  - China (RT 1.029) y Otros (1.031) duran alrededor de 3 % más que Taiwán. Es significativo pero pequeño.
  - Industrial: RT 0.945, 5.5 % menos duración.
  - Valor inicial: RT 1.031 por unidad de log.
  - Reingreso: RT 1.117, 12 % más duración.
  - Las direcciones coinciden con el Cox y el discreto.
- **Límites:**
  - Estos modelos no incluyen RD ni TLC (cambian dentro del episodio), así que no responden la pregunta principal.
  - Los tiempos son enteros con muchos empates.
  - El AIC no es comparable con el del Cox ni con el del discreto.

## Limitaciones (para la sección final)

Sin análisis de sensibilidad, estas decisiones quedan como supuestos que hay que declarar:

- **Inicios desconocidos:** se excluyeron 277 episodios activos en 2000. Puede haber un sesgo si esas relaciones antiguas respondieron distinto a RD y TLC.
- **Flujos pequeños:** cualquier monto positivo cuenta como actividad, y el 39 % de los registros es menor a 1 000 USD. Parte de las "interrupciones" pueden ser envíos esporádicos y no relaciones comerciales reales.
- **Pausas de un año:** una ausencia de un solo año se trata como interrupción más reingreso. Algunas pueden ser pausas temporales de la misma relación.
- **Fecha del TLC:** entró en vigor en agosto de 2011, pero `TLC_resultado` vale 1 para todo 2011, así que en ese año la exposición es parcial.
- **Salto de cobertura en 2025:** sobre todo Pakistán y Japón. Afecta las transiciones 2024→2025, que entran en los modelos, y los descriptivos de censura.
- **Clasificación arancelaria:** no se aplicaron correspondencias entre versiones del SA (2002, 2007, 2012, 2017, 2022). Los cambios de código pueden generar interrupciones y entradas espurias en esos años, aunque los efectos fijos de año absorben la parte común a todos los mercados.
- **Riesgos proporcionales en el Cox:** el supuesto no se cumple para el valor inicial (p = 0.007), aunque sí para las interacciones de interés.
