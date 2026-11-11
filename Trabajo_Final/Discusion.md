
# Inconsistencias por resolver

Antes de integrar este texto al artículo, conviene armonizar estos datos del borrador de Word con la especificación y los resultados de `Codigo_Trabajo_Final_2.qmd`:

- El título del borrador fecha el TLC con China en 2010; el acuerdo entró en vigor y el indicador del análisis comienza en 2011.
- Métodos presenta los períodos 2008–2011 y 2012–2025; el análisis utiliza 2008–2010 y 2011–2025.
- La sección de Datos del borrador describe solo Taiwán y China; el análisis incluye nueve mercados y compara esos destinos con otros siete mercados asiáticos.
- El total descriptivo indica 9.318 interrupciones; el código y las interpretaciones reportan 9.328 de 10.629 episodios.
- El texto dice que los episodios activos en 2000 se tratan como truncamientos por la izquierda y se eliminan. Para evitar confundir el concepto con la decisión muestral, debe indicarse que se excluyeron de la muestra principal porque su inicio es anterior y desconocido.

# Resultados

## Modelo de Cox y diagnóstico

El modelo de Cox se estimó con intervalos anuales de inicio y fin, efectos fijos de año y destino, interacciones entre destino y período, y errores estándar robustos agrupados por subpartida. Los efectos de interés comparan los cambios relativos de Taiwán y China con los otros siete mercados. La Tabla 1 resume estas interacciones.

| Interacción | HR | IC del 95 % | *p* |
| --- | ---: | ---: | ---: |
| Taiwán × después de 2007 | 0,741 | 0,567–0,968 | 0,028 |
| China × después de 2007 | 1,232 | 1,010–1,502 | 0,040 |
| Taiwán × desde 2011 | 1,311 | 1,030–1,680 | 0,030 |
| China × desde 2011 | 0,826 | 0,715–0,955 | 0,010 |

En relación con el cambio observado en los otros mercados, el riesgo de interrupción de Taiwán fue menor en 2008–2010 y aumentó relativamente desde 2011. Para China, el riesgo relativo fue mayor en 2008–2010 y disminuyó desde 2011. Los coeficientes de interacción describen cambios relativos entre períodos; no son comparaciones simples de China o Taiwán contra otro destino en todo el período.

La prueba de Schoenfeld no pudo calcularse para el modelo con efectos fijos de año por singularidad de la matriz. En una especificación de diagnóstico que reemplaza esos efectos por indicadores principales de los períodos diplomático y del TLC, las cuatro interacciones de interés presentaron valores *p* de 0,227 a 0,632. Sus estimaciones fueron cercanas a las del Cox original. Sin embargo, la prueba global de esa especificación rechazó la proporcionalidad (χ² = 39,21; 17 gl; *p* = 0,0017), con señales de variación para destino, valor inicial, interrupción previa y los períodos. Este diagnóstico alternativo no demuestra que el Cox original cumpla el supuesto.

## Modelos paramétricos

Se compararon cuatro distribuciones para la duración con las mismas 9.619 observaciones. La loglogística obtuvo el menor AIC y BIC. En este modelo de tiempo acelerado de falla (AFT), los coeficientes exponenciados indican cuántas veces se multiplica el tiempo hasta la interrupción, manteniendo constantes las demás variables: valores mayores que uno corresponden a mayor duración y valores menores que uno, a menor duración.

| Distribución | AIC | BIC |
| --- | ---: | ---: |
| Loglogística | 18.610 | 18.660 |
| Lognormal | 20.771 | 20.821 |
| Weibull | 26.662 | 26.712 |
| Exponencial | 27.912 | 27.955 |

La Tabla 3 presenta los coeficientes exponenciados del ajuste loglogístico. Manteniendo constantes las demás covariables, la duración estimada fue aproximadamente 2,9 % mayor para China y 3,1 % mayor para los otros mercados que para Taiwán. El sector industrial presentó una duración 5,5 % menor que el agrícola; una unidad adicional del logaritmo natural del valor inicial se asoció con una duración 3,1 % mayor, y los episodios con interrupción previa con una duración 11,7 % mayor. Los cinco intervalos de confianza excluyeron uno. Estos modelos describen asociaciones con características fijas del episodio y no incluyen los indicadores de cambio diplomático ni del TLC, que varían durante el seguimiento.

**Tabla 3. Coeficientes exponenciados del modelo loglogístico de tiempo acelerado de falla.**

| Variable o comparación | Coeficiente exponenciado, exp(β) | IC del 95 % |
| --- | ---: | ---: |
| China frente a Taiwán | 1,029 | 1,001–1,057 |
| Otros países asiáticos frente a Taiwán | 1,031 | 1,008–1,054 |
| Sector industrial frente a agrícola | 0,945 | 0,908–0,983 |
| Logaritmo del valor inicial, por unidad adicional | 1,031 | 1,027–1,036 |
| Interrupción previa frente a ausencia de antecedentes | 1,117 | 1,094–1,141 |



## Modelos binomiales mixtos en tiempo discreto

El análisis en tiempo discreto comprendió 16.498 transiciones anuales correspondientes a 9.619 episodios, con 9.061 interrupciones. Se utilizaron los episodios cuyo inicio se observó y que aportaron al menos una transición con resultado conocido. La respuesta indica si la exportación se interrumpió en el año siguiente al año exportador observado. Se estimaron modelos con enlaces logit y log-log complementario (cloglog), ajustados por edad del episodio, destino, año calendario, sector, logaritmo del valor inicial y antecedentes de interrupción, con un intercepto aleatorio por subpartida.

Las odds de interrupción se definen como el cociente entre la probabilidad de que un episodio exportador se interrumpa en la siguiente transición anual y la probabilidad de que continúe, dado que permanece activo al inicio de esa transición. Si esa probabilidad de interrupción es $p$, las odds son $p/(1-p)$. La razón de odds (OR) compara ese cociente entre dos condiciones, manteniendo constantes las demás covariables y el efecto aleatorio de la subpartida. Una OR mayor que uno indica mayores odds de interrupción; una menor que uno, menores odds.

Los coeficientes exponenciados del logit se interpretan en términos de OR y los del cloglog en términos de razones de hazards (HR), bajo su interpretación de riesgos proporcionales agrupados en intervalos anuales. En las interacciones entre destino y período, los coeficientes exponenciados comparan los cambios de esas razones entre destinos, como se precisa en la Tabla 4. El logit se utiliza como referencia principal para la interpretación y el cloglog permite evaluar la consistencia de las asociaciones entre enlaces. Las estimaciones de ambos modelos son condicionales al efecto aleatorio de la subpartida.

### Cambios asociados con los períodos diplomático y comercial

La Tabla 4 presenta las interacciones que responden a los objetivos sobre el cambio diplomático y el TLC. Como ambos indicadores permanecen activos después de su fecha de inicio, la primera interacción identifica el cambio de 2008–2010 frente a 2000–2007 y la segunda el cambio adicional de 2011–2025 frente a 2008–2010. En ambos casos, se compara la evolución del destino con la evolución común de los siete mercados de referencia, conservando sus identidades en los efectos fijos de país.

**Tabla 4. Cambios relativos en la interrupción según destino y período.**

| Interacción | Logit: OR (IC del 95 %) | Cloglog: HR (IC del 95 %) |
| --- | ---: | ---: |
| Taiwán × después de 2007 | 0,53 (0,31–0,91) | 0,69 (0,50–0,97) |
| China × después de 2007 | 1,27 (0,86–1,86) | 1,23 (0,97–1,56) |
| Taiwán × desde 2011 | 1,76 (1,15–2,71) | 1,42 (1,07–1,88) |
| China × desde 2011 | 0,78 (0,58–1,05) | 0,83 (0,68–1,00) |

Nota: Los intervalos son de Wald al 95 %; las cifras se presentan redondeadas.

Para Taiwán, la interacción del período posterior al cambio diplomático fue 0,53 (IC del 95 %: 0,31–0,91) en el logit. Esto corresponde a un cambio relativo de las odds de interrupción 47 % menor que el observado en los mercados de comparación en 2008–2010 respecto a 2000–2007. El intervalo excluyó uno, por lo que se rechazó la hipótesis nula de ausencia de cambio relativo al nivel del 5 %. Desde 2011 se estimó un cambio adicional en sentido contrario: la interacción fue 1,76 (1,15–2,71), equivalente a un aumento relativo del 76 % respecto a 2008–2010, también estadísticamente significativo. El cloglog confirmó ambas direcciones, con interacciones de 0,69 y 1,42 cuyos intervalos excluyeron uno.

Para China, las interacciones del logit fueron 1,27 (0,86–1,86) después del cambio diplomático y 0,78 (0,58–1,05) desde 2011. Las estimaciones apuntaron, respectivamente, a un aumento relativo y a una disminución adicional de las odds de interrupción, pero en ambos casos no se rechazó la hipótesis nula al 5 %. El cloglog presentó las mismas direcciones, con estimaciones de 1,23 y 0,83. El límite superior del intervalo de esta última aparece como 1,00 por redondeo; esa cifra redondeada no permite por sí sola resolver su significancia exacta.

El cambio relativo entre 2011–2025 y 2000–2007 se obtuvo combinando las dos interacciones de cada destino, con errores estándar que incorporan su covarianza. Esta comparación permite evaluar el resultado conjunto de las dos etapas (Tabla 5).

**Tabla 5. Cambio relativo combinado de 2011–2025 frente a 2000–2007.**

| Destino | Logit: OR (IC del 95 %) | *p* | Cloglog: HR (IC del 95 %) | *p* |
| --- | ---: | ---: | ---: | ---: |
| Taiwán | 0,943 (0,638–1,393) | 0,767 | 0,982 (0,785–1,228) | 0,873 |
| China | 0,985 (0,741–1,308) | 0,915 | 1,015 (0,852–1,210) | 0,865 |

En los dos enlaces, las estimaciones combinadas fueron próximas a uno y no se rechazó la hipótesis nula de ausencia de cambio relativo para ninguno de los destinos. Al nivel de significancia del 5 %, no se encontró evidencia estadística de un cambio neto relativo en las odds de interrupción (logit) ni en el hazard (cloglog) entre 2000–2007 y 2011–2025 para Taiwán o China, respecto a la evolución de los otros mercados.

### Duración del episodio y características del flujo exportador

La edad del episodio mostró una asociación negativa con la interrupción, aun después del ajuste por destino, calendario, covariables y heterogeneidad entre subpartidas (Tabla 6). Frente a la primera edad, las odds estimadas fueron 51 % menores en la segunda, 66 % menores en la tercera y 92 % menores a partir de la décima. Todos los intervalos de estas comparaciones excluyeron uno. El cloglog mostró el mismo patrón decreciente.

**Tabla 6. Asociaciones de la edad y las características del episodio con la interrupción.**

| Variable o comparación | Logit: OR (IC del 95 %) | Cloglog: HR (IC del 95 %) |
| --- | ---: | ---: |
| Edad 2 frente a 1 | 0,49 (0,44–0,54) | 0,63 (0,59–0,67) |
| Edad 3 frente a 1 | 0,34 (0,29–0,39) | 0,45 (0,41–0,51) |
| Edad 4 frente a 1 | 0,26 (0,22–0,32) | 0,35 (0,30–0,41) |
| Edad 5 frente a 1 | 0,19 (0,15–0,24) | 0,25 (0,20–0,31) |
| Edad 6–9 frente a 1 | 0,14 (0,11–0,17) | 0,18 (0,15–0,21) |
| Edad 10 o más frente a 1 | 0,08 (0,06–0,11) | 0,10 (0,08–0,14) |
| Sector industrial frente a agrícola | 1,33 (1,12–1,58) | 1,18 (1,07–1,31) |
| Logaritmo del valor inicial, por unidad adicional | 0,86 (0,85–0,87) | 0,91 (0,90–0,92) |
| Interrupción previa frente a ausencia de antecedentes | 0,64 (0,58–0,70) | 0,74 (0,70–0,78) |

La disminución con la edad caracteriza una mayor estabilidad de los episodios que permanecen activos. El ajuste por subpartida contempla parte de la heterogeneidad no observada, pero no permite concluir que toda la disminución se deba a un efecto causal de acumular años exportando.

El sector industrial presentó odds de interrupción 33 % mayores que el agrícola (OR = 1,33; IC del 95 %: 1,12–1,58). Por su parte, una unidad adicional del logaritmo natural del valor inicial se asoció con odds 14 % menores (OR = 0,86; 0,85–0,87). Los episodios con una interrupción previa registraron odds 36 % menores que los primeros episodios observados de la relación producto–destino (OR = 0,64; 0,58–0,70). En las tres comparaciones se rechazó la hipótesis nula de ausencia de asociación al 5 %, y las direcciones coincidieron con las del cloglog. El antecedente de interrupción identifica reingresos del flujo agregado.

### Diferencias entre destinos

Los efectos fijos de destino utilizaron Hong Kong como categoría de referencia. En el logit, Pakistán e India presentaron mayores odds de interrupción, con OR de 3,00 (IC del 95 %: 1,91–4,70) y 1,40 (1,18–1,67), respectivamente. Japón y Corea del Sur registraron menores odds, con OR de 0,83 (0,71–0,97) y 0,83 (0,70–0,97). Para Malasia y Singapur, los intervalos incluyeron uno: 0,90 (0,76–1,06) y 0,97 (0,82–1,15), respectivamente. Estas diferencias corresponden a comparaciones ajustadas por las covariables del modelo.

Debido a las interacciones temporales, los efectos principales de Taiwán y China representan únicamente sus diferencias respecto a Hong Kong antes de 2008. Las OR fueron 1,36 (0,94–1,97) y 0,96 (0,73–1,27), respectivamente, sin evidencia estadísticamente significativa de diferencias en ese período. La comparación de sus cambios posteriores con los otros siete mercados se recoge en las Tablas 4 y 5.

### Comparación de los modelos en tiempo discreto

Los modelos logit y cloglog se compararon mediante AIC y BIC, utilizando las mismas 16.498 transiciones anuales y la misma estructura de covariables y efectos aleatorios. Ambos criterios valoran el ajuste considerando la complejidad del modelo; valores menores indican un mejor ajuste relativo según el criterio correspondiente.

**Tabla 7. Comparación del ajuste de los modelos binomiales mixtos.**

| Indicador | Logit | Cloglog |
| --- | ---: | ---: |
| AIC | 17.028 | 17.070 |
| BIC | 17.383 | 17.424 |

El logit presentó menores AIC y BIC que el cloglog, por lo que se seleccionó como modelo principal entre los dos enlaces considerados. Los criterios se calcularon con la aproximación de estimación `nAGQ = 0`, de modo que esta comparación es aproximada. AIC y BIC permiten comparar el ajuste relativo, pero no constituyen pruebas de cumplimiento de los supuestos.

La elección del tiempo discreto como enfoque principal responde a la observación anual de las exportaciones, la abundancia de tiempos empatados y la incorporación del contexto calendario durante cada episodio. La comparación con Cox mostró coincidencia en el signo de las cuatro interacciones, aunque la evidencia estadística para China fue más débil en los modelos mixtos. Los AIC y BIC de la Tabla 7 no se comparan directamente con los de los demás enfoques: Cox utiliza una verosimilitud parcial, los modelos AFT ajustan una distribución continua a la duración por episodio y los modelos discretos utilizan una respuesta binaria por transición anual. Por ello, se selecciona el tiempo discreto por su adecuación a los datos y a los objetivos, y el enlace logit por su mejor ajuste relativo frente al cloglog, sin establecer una clasificación global por AIC o BIC.

# Discusión

## Relación de los resultados con los objetivos de investigación

Los resultados muestran que la continuidad de las exportaciones costarricenses hacia los mercados asiáticos analizados se caracteriza por episodios breves y diferencias temporales que no siguen una trayectoria uniforme después del cambio diplomático y del TLC. La evidencia permite distinguir entre la fragilidad general de las relaciones producto-destino y los cambios relativos observados en Taiwán y China frente a los otros siete mercados. Esta distinción resulta central para responder al objetivo general, pues una diferencia de supervivencia entre destinos no implica, por sí misma, que haya sido ocasionada por los acontecimientos institucionales estudiados.

Respecto al objetivo de caracterizar y comparar la duración, la mediana estimada fue de un año en los tres grupos de destinos y el riesgo de interrupción en la primera edad del episodio alcanzó el 73,6 % en la muestra principal. La supervivencia inicial fue menor para Taiwán que para China, mientras que las diferencias se redujeron en edades posteriores. La comparación por pares con ajuste de Holm identificó una diferencia entre esos dos destinos, pero su interpretación es exploratoria por la dependencia entre episodios. Estas curvas describen la experiencia conjunta de la ventana de estudio; la comparación de los cambios posteriores a 2007 y a 2011 se apoya en las interacciones de los modelos, y no en las medianas generales por destino.

En cuanto al objetivo de evaluar el cambio posterior a la ruptura diplomática, los modelos discretos no respaldan la expectativa de un deterioro inmediato de la continuidad exportadora hacia Taiwán. En el modelo logit, la interacción correspondiente a 2008-2010 fue de 0,53, con un intervalo de confianza del 95 % de 0,31 a 0,91. Esta estimación representa una reducción relativa de las odds de interrupción respecto al cambio común de los mercados de comparación, tomando 2000-2007 como referencia. Para China, la estimación fue de 1,27, pero su intervalo de 0,86 a 1,86 no permite establecer un cambio con el nivel de significancia adoptado. Por tanto, el inicio de relaciones diplomáticas no se acompañó de evidencia concluyente de una mejora inmediata de la permanencia de sus flujos exportadores.

El objetivo de identificar cambios adicionales desde la entrada en vigor del TLC arroja un patrón distinto. Para Taiwán se estimó una interacción de 1,76 (IC del 95 %: 1,15-2,71), indicativa de un aumento relativo de las odds de interrupción desde 2011 respecto a 2008-2010. Para China, la estimación de 0,78 (IC del 95 %: 0,58-1,05) apunta hacia una disminución, aunque sin evidencia concluyente en el modelo logit. La interacción de Taiwán identifica su evolución durante ese nuevo período; no supone que ese destino esté cubierto por el tratado con China. Tampoco permite atribuir su cambio al TLC de manera aislada.

Al combinar ambos cambios, las estimaciones para 2011-2025 frente a 2000-2007 fueron próximas a uno: 0,94 para Taiwán y 0,99 para China, con intervalos de confianza de 0,64-1,39 y 0,74-1,31, respectivamente. Al nivel de significancia del 5 %, no se encontró evidencia estadística de un cambio neto relativo en las odds de interrupción entre esos períodos para Taiwán o China, respecto a la evolución de los otros mercados, en el modelo principal. El patrón estimado es compatible con variaciones de distinto signo entre las etapas, especialmente para Taiwán, antes que con una mejora o un deterioro uniforme durante toda la etapa posterior al cambio diplomático.

La comparación entre métodos ayuda a precisar el alcance de estas respuestas. El tiempo discreto resulta adecuado para la observación anual y la concentración de interrupciones en edades empatadas. Dentro de los modelos discretos, logit presentó menores AIC y BIC que cloglog, aunque la comparación se obtuvo mediante la aproximación de estimación utilizada y conviene confirmar su estabilidad. Cox y cloglog mostraron direcciones semejantes en las interacciones, pero la evidencia estadística para China fue más fuerte en Cox. Entre los modelos paramétricos, la loglogística presentó el mejor ajuste relativo, pero esos modelos no incorporan los cambios institucionales durante el episodio y, por ello, no resuelven directamente los objetivos temporales del estudio.

Estas conclusiones se circunscriben a los episodios cuyo inicio se observó y que aportaron al menos una transición anual. La exclusión de los episodios activos en 2000 impide extenderlas automáticamente a relaciones comerciales antiguas. Asimismo, las interrupciones corresponden a flujos agregados por producto y destino, no a la salida de empresas. Los montos pequeños, la definición de una ausencia anual como interrupción y la falta de correspondencias entre versiones de la nomenclatura arancelaria pueden afectar la duración medida; no se dispone de resultados de sensibilidad que cuantifiquen ese efecto. Los controles de año y destino tampoco descartan cambios específicos de cada mercado que coincidan con los hitos estudiados. Por estas razones, las comparaciones se interpretan como asociaciones y no como una evaluación causal de las decisiones diplomáticas o comerciales.

## Coincidencias y diferencias con la literatura

La corta duración observada coincide con los antecedentes nacionales y con la fragilidad de los flujos exportadores descrita por Brenton et al. (2010). Valverde Fallas (2022) también encontró una mediana de un año para las exportaciones costarricenses a nivel de producto. Sandoval Alvarado (2018), con información de empresa, producto y destino, estimó que aproximadamente el 30 % de los flujos superaba el primer año, proporción cercana al 26,4 % de supervivencia inicial de este estudio. La coincidencia respalda la relevancia de estudiar la permanencia junto con la entrada a mercados, aunque las diferencias en cobertura, períodos y unidades de análisis impiden interpretar esas cifras como una comparación exacta del desempeño exportador.

El menor riesgo asociado con un valor inicial más alto también coincide con Valverde Fallas (2022) y con [Lawless y Studnicka (2024)](https://link.springer.com/article/10.1007/s11079-023-09727-4). En el modelo logit se estimó una razón de odds de 0,86 por unidad adicional del logaritmo del valor inicial. Este resultado vincula una mayor escala monetaria al comienzo del episodio con mayor permanencia, sin demostrar que incrementar el monto exportado cause esa continuidad.

Una diferencia importante aparece en los reingresos. En este trabajo, los episodios con una interrupción previa presentaron menores odds de salida que los primeros episodios observados, mientras que Valverde Fallas (2022) encontró que los antecedentes de interrupción y una mayor inactividad se asociaban con mayor riesgo de fallo. La discrepancia puede relacionarse con la selección de destinos, las ventanas de observación y la medición de la historia previa: aquí se utiliza un indicador binario de reingreso, sin incorporar la longitud de la pausa. Brenton et al. (2010) destacan la importancia de la experiencia específica, y Lawless y Studnicka (2024) muestran que su asociación con la permanencia depende de otras características del exportador. Estos antecedentes permiten plantear el aprendizaje como una explicación posible, pero nuestros datos no identifican empresas ni permiten comprobar que un reingreso represente la experiencia acumulada de los mismos participantes.

La comparación sectorial coincide en dirección con Valverde Fallas (2022), quien encontró menor riesgo para los productos agrícolas que para los industriales. En el presente análisis, el sector industrial mostró mayores odds de interrupción, aun después de los ajustes incluidos. Sin embargo, la clasificación en dos sectores reúne productos muy diferentes. Sandoval Alvarado (2018) encontró diferencias según sector y régimen aduanero, mientras que esta base no distingue los regímenes. Por tanto, la asociación sectorial no debe interpretarse como una desventaja general de toda exportación industrial ni como una comparación entre empresas agrícolas e industriales equivalentes.

Los resultados vinculados al TLC ofrecen una coincidencia parcial con los antecedentes. La dirección estimada para China desde 2011 es compatible con la asociación favorable de los acuerdos comerciales encontrada por Nkansah et al. (2022) para Ghana y por los estudios nacionales de Sandoval Alvarado (2018) y Valverde Fallas (2022). Sin embargo, en nuestro modelo principal esa reducción adicional no alcanza significancia estadística. Tampoco se está estimando el mismo contraste: los antecedentes examinan otros acuerdos, destinos y composiciones comerciales, mientras que aquí se compara el cambio de China con la evolución de siete mercados asiáticos. La falta de una asociación concluyente en esta comparación no refuta los resultados de aquellos estudios ni demuestra que el tratado carezca de beneficios en otras dimensiones del comercio.


Finalmente, Esteban Rodríguez (2013) interpreta el acercamiento diplomático a China en el marco de expectativas económicas y de inversión. Nuestro análisis complementa ese antecedente al examinar una dimensión específica de los resultados comerciales: la continuidad anual de los productos en cada destino. La ausencia de una mejora relativa concluyente para China durante toda la etapa posterior no permite evaluar por sí sola el cumplimiento de aquellas expectativas, que también comprenden montos, inversión y otras oportunidades. El aporte del estudio consiste en mostrar que el cambio diplomático y la vigencia del tratado deben distinguirse temporalmente, y que sus asociaciones con la permanencia exportadora no se deducen de la importancia económica de los mercados ni de la evolución de los valores exportados.
