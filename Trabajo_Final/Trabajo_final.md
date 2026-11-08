---
title: "Trabajo Final"
subtitle: "SP-1637 Análisis de Sobrevivencia — IIC-2026"
author: 
    - 'Gustavo Murillo'
    - 'Mario Alvarado'
date: today
date-format: long 
format:
  pdf:
   documentclass: article
   papersize: letter
   classoption: [fleqn]
   geometry:
     - top=2.5cm
     - bottom=2.5cm
     - left=2.5cm
     - right=2.5cm
   toc: true
   toc-depth: 3
   toc-title: "Contenidos"
   number-sections: false
   colorlinks: true
   linkcolor: RoyalBlue
   urlcolor: RoyalBlue
   highlight-style: github
   code-block-bg: "#f7f7f7"
   code-block-border-left: "#cccccc"
   code-overflow: wrap
   fig-pos: "H"
   fig-align: center
   include-in-header:
     text: |
       \setlength{\mathindent}{0pt}
execute: 
  eval: true
  message: false
  warning: false
lang: es
editor_options: 
  chunk_output_type: console
---

# Título: Supervivencia de las exportaciones costarricenses hacia Taiwán y China en el contexto del cambio de relaciones diplomáticas de 2007 y el Tratado de Libre Comercio con China en 2011 para el periodo 2000-2025

# Introducción

Las relaciones comerciales de Costa Rica con Taiwán y China permiten estudiar la continuidad de las exportaciones en un contexto de cambio diplomático. Según el Ministerio de Comercio Exterior de Costa Rica (COMEX, s. f.), el comercio con China se remonta a principios de la década de 1990, antes del establecimiento de relaciones diplomáticas. Por tanto, el cambio de 2007 no representó el inicio del comercio con ese mercado, sino una modificación del contexto político e institucional en el que se desarrollaba.

En junio de 2007, Costa Rica rompió sus relaciones diplomáticas con Taiwán y estableció vínculos oficiales con la República Popular China (Esteban Rodríguez, 2013). El comunicado conjunto fijó el establecimiento de estas relaciones a partir del 1 de junio de ese año (Gobierno de la República de Costa Rica y Gobierno de la República Popular China, 2007). Según Esteban Rodríguez (2013), el acercamiento a China respondió, entre otros factores, a las expectativas del gobierno de Óscar Arias de ampliar las oportunidades comerciales y de inversión, así como fortalecer la proyección internacional de Costa Rica. Desde esta perspectiva, el cambio diplomático formó parte de una reorientación de las relaciones exteriores hacia las oportunidades que ofrecía China. Estas expectativas económicas justifican examinar cómo evolucionó posteriormente la permanencia de las exportaciones costarricenses hacia ambos mercados.

Posteriormente, el Tratado de Libre Comercio entre Costa Rica y China entró en vigor el 1 de agosto de 2011, tras negociaciones iniciadas en noviembre de 2008 (COMEX, s. f.). El cambio diplomático y la entrada en vigor del tratado constituyen acontecimientos distintos. Por ello, interesa examinar tanto las variaciones posteriores a 2007 como los posibles cambios adicionales en la continuidad exportadora después del TLC.

El análisis requiere considerar no solo los montos exportados, sino también la permanencia de los productos en los mercados de destino. Brenton et al. (2010) destacan que el crecimiento y la diversificación exportadora dependen tanto de la entrada en nuevos productos y mercados como de la supervivencia de los flujos comerciales. Observar exportaciones en un año no permite establecer, por sí solo, si esa relación se mantiene en los siguientes. El análisis de supervivencia ofrece un enfoque para estudiar su duración y el riesgo de interrupción.

La comparación entre Taiwán y China busca determinar si la permanencia de los productos exportados presenta patrones diferentes entre ambos destinos y entre los períodos señalados, tomando como referencia adicional otros siete mercados asiáticos: Hong Kong, India, Japón, Corea del Sur, Malasia, Pakistán y Singapur. El aporte esperado consiste en complementar la descripción de los valores exportados con una evaluación de la continuidad de las relaciones producto–destino. Esta comparación no presupone que los mercados sean equivalentes ni que necesariamente hayan experimentado cambios en sentidos opuestos.

El estudio utiliza registros de la Promotora del Comercio Exterior de Costa Rica (PROCOMER, 2026), con información anual por subpartida y destino, para el período 2000–2025. La unidad de interés es la relación exportadora entre un producto y cada mercado, no la empresa individual. Mediante técnicas de análisis de supervivencia se examinan su duración y su riesgo de interrupción. El estudio tiene un alcance observacional: busca identificar diferencias y asociaciones temporales, sin interpretar automáticamente una variación posterior a 2007 o al TLC como un efecto causal de esos acontecimientos.


# Revisión de literatura

## Supervivencia de las exportaciones y factores asociados

La literatura sobre supervivencia exportadora estudia la continuidad de las relaciones comerciales, complementando el análisis de sus montos. Brenton et al. (2010) encuentran que los flujos bilaterales de productos presentan una elevada frecuencia de interrupciones, particularmente en países de bajos ingresos. Sus resultados destacan la importancia de la experiencia específica en productos y mercados para comprender la permanencia exportadora. Este enfoque permite distinguir entre iniciar una relación comercial y conseguir que se mantenga; ambas dimensiones son relevantes para interpretar el desempeño exportador.

En este marco, interesa precisar qué relación se observa. La permanencia de un producto en un destino no equivale necesariamente a la supervivencia de una empresa: distintas firmas pueden exportar el mismo producto, y la salida de una de ellas puede quedar compensada por otras. Por tanto, con registros agregados por producto y destino, la interrupción se refiere al flujo comercial observado, no al cierre de una empresa ni al abandono de toda su actividad exportadora.

La evidencia también advierte que la experiencia no tiene una interpretación única. Lawless y Studnicka (2024), con información de empresas irlandesas, encuentran que la asociación entre experiencia previa y supervivencia de nuevos flujos depende de su relación con la diversificación y la proximidad al producto principal de la firma. Su estudio muestra, además, una mayor permanencia de los flujos que comienzan con valores exportados más altos. Estos resultados motivan considerar la escala inicial y los antecedentes comerciales, sin suponer que cualquier medida de experiencia representa el mismo fenómeno. En particular, los reingresos de una relación producto–destino no permiten conocer la experiencia de las empresas que participan en ella.

## Relaciones diplomáticas, acuerdos comerciales y continuidad exportadora

El cambio diplomático y un acuerdo comercial son acontecimientos institucionales distintos. Para el caso estudiado, el primero corresponde al reconocimiento diplomático y a la reorientación de los vínculos oficiales; el segundo introduce un marco de compromisos comerciales. La documentación de COMEX (s. f.) permite identificar la entrada en vigor del TLC con China como un hito posterior al cambio de relaciones de 2007. Analíticamente, esta separación evita atribuir al cambio diplomático cualquier variación observada después del tratado. Asimismo, un aumento del monto exportado no demuestra por sí mismo una reducción del riesgo de interrupción: puede concentrarse en pocos productos mientras otros dejan de venderse.

Türkcan y Saygılı (2018) estudian las exportaciones turcas de maquinaria durante 1998–2013 y encuentran diferencias en la supervivencia según el tipo de producto y el momento de inicio de la relación comercial. Los acuerdos favorecen la permanencia de relaciones que ya existían al entrar en vigor, mientras que los flujos iniciados posteriormente presentan una dinámica menos favorable. Además, los resultados difieren entre partes y componentes y bienes finales. Este antecedente sugiere distinguir la exposición a un acuerdo durante la trayectoria exportadora del hecho de haber comenzado a exportar después de su entrada en vigor.

Por su parte, Nkansah et al. (2022) analizan las exportaciones de Ghana durante 1996–2018 y encuentran una asociación entre la pertenencia a la Comunidad Económica de Estados de África Occidental y un menor riesgo de interrupción. También identifican diferencias entre grupos de productos y especificaciones al examinar otros acuerdos. En conjunto, estos estudios justifican considerar el entorno comercial, pero no anticipar un resultado uniforme del TLC con China: sus hallazgos corresponden a países, mercados y productos diferentes de los de esta investigación.

## Antecedentes para Costa Rica

Sandoval Alvarado (2018) analiza flujos a nivel de empresa, producto y destino para 1999–2016. Encuentra una corta duración de las exportaciones y diferencias en el riesgo de interrupción según el régimen aduanero, el sector y el mercado de destino. Aunque identifica una asociación general entre los TLC y una mayor permanencia, sus resultados varían por régimen y acuerdo. Este antecedente advierte que las diferencias de composición pueden intervenir en las comparaciones comerciales. Sin embargo, la base disponible para el presente trabajo reúne todos los regímenes sin identificarlos por separado, de modo que no permite reproducir ese contraste.

Valverde Fallas (2022) estudia la duración de los flujos costarricenses a nivel de producto durante 2007–2019. Sus resultados relacionan un mayor valor inicial exportado con un menor riesgo de interrupción, mientras que los antecedentes de interrupción y los períodos de inactividad se vinculan con mayor fragilidad. También encuentra diferencias entre los sectores agrícola e industrial y una asociación favorable de los TLC con la supervivencia. Este trabajo es especialmente cercano a la unidad de análisis propuesta y orienta la consideración de la escala inicial, el sector y la historia previa del flujo. No obstante, sus resultados proceden de una cobertura de destinos más amplia y no deben trasladarse automáticamente a la comparación entre Taiwán y China.

Desde una perspectiva política, Esteban Rodríguez (2013) compara las decisiones de Costa Rica y Nicaragua frente a China y Taiwán, destacando la interacción de intereses económicos y políticos. Su análisis permite interpretar las expectativas que acompañaron el acercamiento costarricense a China, pero no estima la duración de las exportaciones. La conexión con el presente estudio consiste en examinar la continuidad de los flujos en el contexto de esa reorientación, sin confundir las expectativas que motivaron una decisión diplomática con sus resultados comerciales efectivamente observados.

## Síntesis y aporte del estudio

Los antecedentes revisados orientan la investigación hacia tres dimensiones: el contexto institucional, las características del producto y la trayectoria de la relación exportadora. Para el presente estudio, esto fundamenta considerar el destino y los períodos asociados al cambio diplomático y al TLC, junto con posibles variables de ajuste como el valor inicial exportado, el sector y los antecedentes observables de interrupción. La historia previa deberá distinguirse de la duración que se busca explicar, y la selección final de variables dependerá de su disponibilidad, su orden temporal y su pertinencia para las preguntas planteadas.

Este estudio complementa los antecedentes nacionales mediante la comparación de la supervivencia exportadora hacia Taiwán y China durante 2000–2025, distinguiendo el cambio diplomático y la entrada en vigor del TLC. Esta delimitación conecta la literatura sobre continuidad comercial con el contexto diplomático costarricense. El análisis busca describir diferencias de permanencia y asociaciones con factores observados, manteniendo la cautela frente a cambios en la composición exportadora, acontecimientos simultáneos y características no disponibles en la base. La evidencia revisada fundamenta la selección de variables, sin establecer de antemano un efecto causal del cambio de relaciones diplomáticas.

# Objetivos

## Objetivo general

Evaluar los cambios en la duración y el riesgo de interrupción de las relaciones comerciales de exportación de Costa Rica hacia Taiwán y China, en comparación con otros mercados asiáticos,considerando el cambio en las relaciones diplomáticas del año 2007 y la entrada en vigor del TLC con China en 2011, para el periodo del 2000 al 2025

## Objetivos específicos

- Estimar y comparar la duración de las relaciones de exportación de Costa Rica hacia China, Taiwán y otros mercados asiáticos antes y después del cambio diplomático de 2007

- Evaluar el cambio en el riesgo de interrupción de las relaciones de exportación hacia Taiwán y China después del cambio en las relaciones diplomaticas de 2007, en relación con otros mercados asiáticos

- Determinar si la entrada en vigor del TLC con China se asocia con cambios adicionales en el riesgo de interrupción de las exportaciones hacia Taiwán y China, en relación con otros mercados asiáticos


# Datos y métodos

## Datos

### Fuente, cobertura y unidad de análisis

El estudio utiliza información del Portal estadístico de la Promotora del Comercio Exterior de Costa Rica (PROCOMER, 2026), correspondiente a las exportaciones de bienes hacia Taiwán, China, Hong Kong, India, Japón, Corea (Sur), República de, Malasia, Pakistán y Singapur durante 2000–2025. En adelante, Corea (Sur), República de se denomina Corea del Sur. La base presenta información anual por subpartida arancelaria de seis dígitos y destino, comprende todos los regímenes aduaneros y registra los valores FOB en dólares estadounidenses corrientes. No contiene identificadores de empresas ni una variable que permita distinguir los regímenes por separado. El período de estudio se delimita a 2000–2025 para excluir la información parcial de 2026.

La selección de estos nueve destinos responde a su importancia comercial: en conjunto, representaron aproximadamente el 93% del valor de las exportaciones costarricenses hacia Asia en 2025 (PROCOMER, 2026). Hong Kong, India, Japón, Corea del Sur, Malasia, Pakistán y Singapur constituyen el grupo de comparación. La incorporación de sus registros requiere la misma cobertura temporal, unidad de producto y criterios de depuración utilizados para China y Taiwán, conservando la identidad de cada destino. La agrupación de los siete mercados se reserva para la presentación descriptiva; su peso comercial no implica que constituyan por sí solos un grupo de control causal equivalente.

<!-- Pendiente de comprobación reproducible: conservar el cálculo del 93% con numerador (nueve destinos), denominador (total de Asia), año 2025 y fuente PROCOMER. -->

La descarga actual contiene 20.072 registros, de los cuales 18.925 corresponden a 2000–2025; se excluyeron 1.147 registros de 2026. No se encontraron duplicados año–destino–subpartida, valores faltantes explícitos ni montos nulos o negativos en el período. Se normalizaron los nombres de Taiwán y Corea del Sur mediante sus códigos ISO, conservando las etiquetas originales. La reconstrucción anual comprende 6.118 relaciones producto–destino y 159.068 registros, incluidos 140.143 registros agregados con valor cero. Se identificaron 10.629 episodios observados, con 9.328 interrupciones y 1.301 censuras al cierre de 2025. De ellos, 277 ya estaban activos en 2000 y conservan identificado su inicio desconocido. Estos recuentos sustituyen los de la revisión preliminar.

La relación de interés es la combinación de un producto y un destino. Dentro de cada relación, un episodio de exportación continua se define como una secuencia de años consecutivos con exportaciones positivas. Así, la continuidad estudiada corresponde al flujo agregado del producto hacia el mercado, no a la permanencia de una empresa particular. Una reanudación posterior a una interrupción verificada constituye un nuevo episodio y reinicia el conteo de su duración. Cada episodio se identifica por separado y conserva el identificador de la relación producto–destino. La estimación debe considerar la dependencia entre episodios de una misma relación, sin tratarlos automáticamente como observaciones independientes.

### Preparación de la información y definición de la respuesta

La variable dependiente es el tiempo hasta la interrupción del episodio exportador. Para el análisis de supervivencia, la respuesta se representa conjuntamente mediante el tiempo observado y el indicador de evento, que permite distinguir las interrupciones observadas de las duraciones censuradas. Para la estimación del modelo en tiempo discreto, la variable dependiente es binaria e indica para cada año en el cual el episodio estuvo activo, si se interrumpe o no. De manera tal que, el modelo permite estimar la probabilidad condicional de interrupción de la exportación.

Se conservaron las subpartidas como texto de seis dígitos y se verificaron la cobertura anual por destino, las claves únicas, los montos y la consistencia sectorial. Según el funcionamiento de la fuente confirmado para este estudio, la ausencia de una relación producto–destino en un año representa ausencia de exportaciones. Se completó la secuencia 2000–2025 con cero para cada relación con al menos un año de exportaciones positivas, sin crear combinaciones nunca observadas. Se identificaron los registros agregados y se verificó que la reconstrucción conserva el valor total exportado. La comparabilidad histórica de las nomenclaturas continúa pendiente de verificación; no se aplicaron correspondencias entre versiones. Los cambios de clasificación no resueltos constituyen una limitación para identificar interrupciones comerciales. Queda pendiente documentar la exclusión de registros sin sector asignado en la descarga.

El evento se define como la interrupción del episodio, identificada cuando, después de una secuencia de exportaciones positivas, se observa un año completo sin exportaciones del producto hacia el destino. Los años ausentes se completan con cero conforme al criterio de la fuente. El tiempo observado corresponde al número de años consecutivos con exportaciones positivas desde el inicio observado del episodio hasta el último año activo previo a la interrupción o hasta el cierre de la observación. El indicador de evento toma el valor 1 si se constata la interrupción y 0 si el episodio permanece activo al finalizar 2025; en este último caso, la duración está censurada por la derecha. El tiempo de censura corresponde al seguimiento observado de cada episodio, no a la ventana completa de 2000–2025 para todos los casos. El año de interrupción es el primer año sin exportaciones, distinto del último año activo: exportar en 2005–2007 y no hacerlo en 2008 implica tres años exportadores observados y una interrupción identificada en 2008.

Las relaciones que ya presentan exportaciones en 2000 requieren un tratamiento específico, pues su inicio real podría ser anterior al período disponible. El año 2000 identifica el comienzo de su observación, no necesariamente el inicio de la exportación ni su valor inicial. Estos registros se conservan en la base; su tratamiento en el análisis de duración queda pendiente de consulta al profesor, sin establecer por ahora su exclusión. La observación anual tampoco permite identificar el momento exacto de una interrupción dentro del año ni detectar pausas y reanudaciones que ocurran en ese mismo año.

### Variables explicativas y fundamento de su selección

Las variables independientes o explicativas son las características del destino, del contexto institucional y del flujo exportador consideradas para analizar su asociación con el tiempo hasta la interrupción. El cuadro 1 presenta estas variables y su papel en el estudio; el tiempo observado y el indicador de evento forman parte de la respuesta y no se incluyen como predictores.

Las variables centrales son el destino y el contexto temporal del cambio diplomático y del TLC, en correspondencia con las preguntas de investigación. Su definición distingue el año calendario del tiempo transcurrido desde el inicio del episodio. La escala inicial del flujo, su sector y los antecedentes observables de interrupción constituyen las variables de ajuste propuestas. La selección de estas variables se fundamenta en los estudios examinados en la revisión de literatura y se resume en el cuadro 1.

**Cuadro 1. Variables explicativas propuestas y su fundamento**

| Variable y papel | Definición operativa propuesta | Fuente y fundamento |
| --- | --- | --- |
| Destino, variable central | Taiwán, China, Hong Kong, India, Japón, Corea del Sur, Malasia, Pakistán o Singapur, identificado para cada relación producto–destino. Para los descriptivos se distinguirán Taiwán, China y los otros siete mercados agrupados. | PROCOMER (2026). Corresponde a la comparación planteada en las preguntas de investigación. |
| Contexto diplomático, variable central | Identificación del período anterior o posterior al cambio de 2007, permitiendo que la comparación difiera entre destinos. | Año y destino de PROCOMER; fecha del comunicado conjunto de ambos gobiernos (2007). Esteban Rodríguez (2013) fundamenta el contexto político, no un efecto estadístico esperado. |
| Vigencia del TLC, variable central | Indicador temporal igual a 1 desde 2011, año de entrada en vigor con exposición parcial, y 0 hasta 2010; se incluye en interacción con los indicadores de China y Taiwán para evaluar cambios relativos a los otros mercados. La interacción con Taiwán no supone que el tratado se aplique a ese destino. Se distingue de la condición de haber iniciado el episodio después de la entrada en vigor. | Año y destino de PROCOMER y fecha de entrada en vigor de COMEX (s. f.). Türkcan y Saygılı (2018) motivan la distinción temporal. |
| Valor del primer año observado, ajuste exploratorio | Logaritmo natural del monto FOB del primer año observado del episodio. Para los episodios activos en 2000 no se interpreta como valor inicial real; se incluye un indicador de inicio desconocido. | PROCOMER. Lawless y Studnicka (2024) y Valverde Fallas (2022) motivan considerar la escala del flujo; esta adaptación no recupera la historia previa a 2000. |
| Sector, ajuste propuesto | Clasificación agrícola o industrial consignada en la variable original de sector. | PROCOMER y diferencias sectoriales examinadas por Valverde Fallas (2022). Permite considerar la composición sectorial de los flujos exportados. |
| Interrupción previa, ajuste propuesto | Indicador de al menos un episodio interrumpido antes del inicio del episodio analizado, para el mismo producto y destino, dentro de la ventana observada. | Historia reconstruida con PROCOMER; antecedente de Valverde Fallas (2022). No incorpora interrupciones futuras ni mide experiencia empresarial. |

El cambio diplomático de junio de 2007 y la entrada en vigor del TLC el 1 de agosto de 2011 ocurrieron dentro de años calendario. El indicador posterior al cambio diplomático se define desde 2008, manteniendo 2007 en el período de referencia. Para el TLC se utiliza 2011 como inicio del período de vigencia a efectos de la clasificación anual, reconociendo que ese año contiene meses anteriores y posteriores a la entrada en vigor y no representa un año completo de exposición; el primer año calendario completo es 2012 (COMEX, s. f.). Así, los períodos descriptivos son 2000–2007, 2008–2010 y 2011–2025. Para los episodios que atraviesen estos hitos se conserva la información del contexto de cada año, en lugar de asignar toda su trayectoria según la situación al inicio. La construcción de los indicadores evita redundancias entre destino, período y vigencia del tratado.

La inclusión del valor inicial también requiere considerar que los montos están expresados en dólares corrientes y que, para episodios iniciados después de un cambio institucional, dicho valor podría reflejar parte de ese cambio. En consecuencia, su incorporación como ajuste no convierte la comparación en una estimación causal. La base tampoco permite controlar diferencias entre empresas o regímenes aduaneros. Una vez completadas las verificaciones y decisiones pendientes, se informarán el número de productos, relaciones, episodios e interrupciones por destino, así como las exclusiones realizadas.

## Métodos

El procedimiento comprende una etapa descriptiva y una etapa de modelación exploratoria. En la primera se cuantificaron productos, relaciones, episodios, interrupciones y censuras por destino, grupo de destinos y sector. Los grupos son Taiwán, China y los otros siete mercados agrupados, conservando la identidad individual de cada país. Se contaron los episodios presentes en cada período calendario (2000–2007, 2008–2010 y 2011–2025); estos recuentos no son aditivos, pues un episodio puede atravesar varios períodos. Las interrupciones se asignaron al primer año sin exportaciones y las censuras al cierre de 2025. El riesgo bruto se calculó como la proporción de interrupciones entre transiciones anuales con resultado conocido, asignando cada transición al año siguiente al año exportador, cuando se verifica continuidad o interrupción. Se excluye la transición 2025–2026, cuyo resultado queda fuera de la ventana, para no interpretar la censura como continuidad posterior observada.

Se construyó una tabla de vida por años exportadores observados del episodio, con números en riesgo, eventos, censuras y riesgo discreto d/n. Se verificó que el producto acumulado de (1 − d/n) coincide con Kaplan–Meier. Se elaboraron curvas por grupo de destino y por cohorte de inicio observado; las últimas comparan cohortes, no efectos del período calendario durante la trayectoria. Los episodios activos en 2000 se conservaron identificados: las curvas son exploratorias y no representan necesariamente la duración total desde el inicio real de todas las relaciones. La prueba log-rank ordinaria se calculó como referencia nominal, sin interpretar su valor p como evidencia inferencial definitiva, pues los reingresos de una misma relación pueden ser dependientes. Las curvas se presentan sin bandas de confianza ordinarias. El tratamiento de esa dependencia y de los inicios desconocidos queda pendiente para el análisis definitivo (Singer y Willett, 2003, cap. 10; Kleinbaum y Klein, 2012, cap. 2).

Posteriormente, en la segunda etapa de análisis, se especifican modelos de riesgo en tiempo discreto para evaluar los cambios en el riesgo de interrupción de las exportaciones asociados a la entrada en vigor del TLC con China y al cambio diplomático del año 2007 con Taiwán. La consideración de este tipo de modelos se debió a la naturaleza de los datos, ya que los mismos son para las exportaciones anuales, lo cual generaría muchos empates para un modelo de Cox. Estos modelos consisten en modelos lineales generalizados binomiales mixtos. Respecto a las funciones de enlace, se especifica un modelo con la función de enlace logit y uno con la función de enlace log-log complementaria (cloglog). La función de enlace cloglog permite estimar los coeficientes exponenciados como razones de riesgo(*hazard ratios*). Por su parte, con la función de enlace logit, la estimación de los coeficientes exponenciados corresponde a razones de probabilidades (*odds ratios*). (Prentice y Gloeckler, 1978; Singer y Willet, 2003, cap. 12). 

La implementación sigue los laboratorios del curso. Se estima Cox en formato inicio–fin, con contexto calendario variable y errores estándar robustos por relación producto–destino. Como comparación pedagógica, se ajustan modelos AFT exponencial, Weibull, lognormal y loglogístico mediante `survreg`, con características fijas del episodio y covarianza robusta por relación. Estos modelos paramétricos no estiman los efectos institucionales que cambian durante el seguimiento. En tiempo discreto se utiliza `glmer` de `lme4`, alternativa a `pglm` mencionada en clase, para incorporar los enlaces logit y cloglog y efectos aleatorios de capítulo, subpartida y relación producto–destino. La edad se agrupa en 1, 2, 3, 4–5, 6–10 y 11 o más años; se requiere evaluar la sensibilidad a esta agrupación.

Los modelos utilizan únicamente transiciones anuales con resultado conocido. El reloj de seguimiento cuenta transiciones desde el inicio observado, por lo que un episodio censurado en 2025 aporta un año menos que su número descriptivo de años exportadores. Los episodios iniciados en 2025, sin transición observable, permanecen en los descriptivos pero no contribuyen a estos ajustes. Se conserva a los episodios activos en 2000 mediante un indicador de inicio desconocido; ello no corrige automáticamente la selección ni recupera su duración real. Los ajustes son exploratorios mientras se resuelve esta decisión con el profesor.

A continuación, se describen los modelos:
$$
\text{cloglog}(h_{ijkay}) = \alpha_a + \gamma_y + \delta_j + \beta_1 TW_j \cdot RD_y + \beta_1^{CN} CN_j \cdot RD_y + \beta_2 TW_j \cdot TLC_y + \beta_2^{CN} CN_j \cdot TLC_y + \mathbf{x}_{ijkay}'\boldsymbol{\lambda} + u_c + v_{i(c)} + w_{ij}
$$

$$
\text{logit}(h_{ijkay}) = \alpha_a + \gamma_y + \delta_j + \beta_1 TW_j \cdot RD_y + \beta_1^{CN} CN_j \cdot RD_y + \beta_2 TW_j \cdot TLC_y + \beta_2^{CN} CN_j \cdot TLC_y + \mathbf{x}_{ijkay}'\boldsymbol{\lambda} + u_c + v_{i(c)} + w_{ij}
$$

donde $h_{ijkay}$ es el riesgo de interrupción del episodio $k$ del producto $i$ hacia el destino $j$, en la edad observada $a$ y el año calendario de resultado $y$; $\alpha_a$ representa la duración agrupada, $\gamma_y$ y $\delta_j$ son efectos fijos de año y destino, $\mathbf{x}_{ijkay}$ son las variables de control y $\lambda$ sus coeficientes respectivamente. $u_c$ y $v_{i(c)}$ son los efectos aleatorios del capítulo y del producto; $w_{ij}$ es el intercepto aleatorio de la relación producto–destino, añadido para reconocer la dependencia de sus episodios. Los coeficientes $\beta_1$ y $\beta_1^{CN}$ corresponden al cambio en el riesgo de interrupción hacia Taiwán y China por el cambio diplomático, mientras que $\beta_2$ y $\beta_2^{CN}$ el cambio adicional por la entrada en vigor del TLC, en ambos casos en relación con los otros países asiáticos. $RD_y$ corresponde a 1 si el año es 2008 en adelante y 0 si el año es antes del 2008, esto indica la ruptura diplomática con Taiwán. $TLC_y$ corresponde a 1 si el año es 2011 en adelante y 0 si el año es anterior a 2011; identifica el período desde el año de entrada en vigor del TLC con China, incluyendo la exposición parcial de 2011. $TW_j$ es 1 si el destino es Taiwán y 0 en otro caso. $CN_j$ es 1 si el destino es China y 0 en otro caso.

Para comparar ambos modelos, se propone calcular el Criterio de Información de Akaike $\left(AIC=2k-2ln\left(\widehat{L}\right)\right)$ (Akaike,1974) y el Criterio de Información Bayesiano $\left(BIC=kln(n)-2ln\left(\widehat{L}\right)\right)$ donde $\widehat{L}$ es el valor máximo de la función de verosimilitud del modelo, $k$ el número de parámetros estimados y $n$ el número de observaciones episodio-año (Schwarz, 1978). Además, se contempla comparar los signos y la significancia de los coeficientes obtenidos para cada uno.

La implementación reproducible utiliza R 4.4.0, con versiones de paquetes registradas mediante `sessionInfo()` en el archivo de análisis. Se utilizan `survival` para Kaplan–Meier, log-rank, Cox, diagnósticos y modelos AFT; `survminer` para los gráficos mediante `ggsurvplot`; y `lme4` para los modelos binomiales mixtos. El nivel nominal de significancia es 5 %. Antes de interpretar los ajustes se revisan convergencia, singularidad y supuestos. El AIC se compara entre familias paramétricas con la misma muestra y, por separado, entre enlaces discretos; no se construye una clasificación común con la verosimilitud parcial de Cox.


## Bibliografía

<!-- Nota de implementación: los modelos mixtos de esta primera ejecución usan nAGQ = 0, una aproximación rápida. Se debe repetir con nAGQ = 1 y verificar estabilidad antes de presentar resultados definitivos. El diagnóstico cox.zph del Cox completo produjo una matriz singular; no se considera validado el supuesto de riesgos proporcionales. -->

Akaike, H. (1974). A new look at the statistical model identification. IEEE Transactions on Automatic Control, 19(6), 716–723. [https://doi.org/10.1109/TAC.1974.1100705](https://doi.org/10.1109/TAC.1974.1100705)

Brenton, P., Saborowski, C., & von Uexkull, E. (2010). What explains the low survival rate of developing country export flows? *The World Bank Economic Review, 24*(3), 474–499. [https://doi.org/10.1093/wber/lhq015](https://doi.org/10.1093/wber/lhq015)

Esteban Rodríguez, M. (2013). ¿China o Taiwán?: Las paradojas de Costa Rica y Nicaragua (2006–2008). *Revista de Ciencia Política, 33*(2), 513–532. [https://doi.org/10.4067/S0718-090X2013000200005](https://doi.org/10.4067/S0718-090X2013000200005)

Gobierno de la República de Costa Rica, & Gobierno de la República Popular China. (2007, 1 de junio). *Comunicado conjunto entre la República de Costa Rica y la República Popular China sobre el establecimiento de relaciones diplomáticas*. Ministerio de Relaciones Exteriores y Culto de Costa Rica. [Documento oficial](https://www.rree.go.cr/files/includes/files.php?id=2002&tipo=instrumento)

Kleinbaum, D.G., y Klein, M. (2012). *Survival analysis: A self-learning text* (3rd ed.). Springer.[https://doi.org/10.1007/978-1-4419-6646-9](https://doi.org/10.1007/978-1-4419-6646-9)

Lawless, M., & Studnicka, Z. (2024). Old firms and new export flows: Does experience increase survival? *Open Economies Review, 35*, 215–243. [https://doi.org/10.1007/s11079-023-09727-4](https://doi.org/10.1007/s11079-023-09727-4)

Ministerio de Comercio Exterior de Costa Rica. (s. f.). *Tratado de Libre Comercio entre el Gobierno de la República de Costa Rica y el Gobierno de la República Popular China*. Recuperado el 5 de octubre de 2026, de [COMEX: Tratado con China](https://www.comex.go.cr/tratados/china/)

Nkansah, K., Takyi, P. O., Sakyi, D., & Adusah-Poku, F. (2022). Economic integration agreements and export survival in Ghana. *Journal of African Trade, 9*(1), 1–22. [https://doi.org/10.1007/s44232-022-00001-z](https://doi.org/10.1007/s44232-022-00001-z)

Prentice, R. L., & Gloeckler, L. A. (1978). Regression Analysis of Grouped Survival Data with Application to Breast Cancer Data. Biometrics, 34(1), 57–67. [https://doi.org/10.2307/2529588](https://doi.org/10.2307/2529588)

Posit team (2026). Positron: A next generation data science IDE. Posit Software, PBC, Boston, MA. URL [https://www.posit.co/](https://www.posit.co/) 

Promotora del Comercio Exterior de Costa Rica. (2026). *Portal estadístico* [Base de datos]. Recuperado el 5 de octubre de 2026, de [https://servicios.procomer.go.cr/PortalEstadistico/](https://servicios.procomer.go.cr/PortalEstadistico/)

R Core Team (2026). _R: A Language and Environment for Statistical Computing_. R Foundation for Statistical Computing, Vienna, Austria. doi:10.32614/R.manuals <https://doi.org/10.32614/R.manuals>. <https://www.R-project.org/>.

Sandoval Alvarado, C. (2018). *Análisis de duración de los flujos de bienes exportados en Costa Rica en el periodo 1998-2016* [Trabajo final de investigación aplicada de maestría, Universidad de Costa Rica].

Schwarz, G. (1978). Estimating the Dimension of a Model. The Annals of Statistics, 6(2), 461–464. [http://www.jstor.org/stable/2958889](http://www.jstor.org/stable/2958889)

Singer, J. D., & Willett, J. B. (2003). Applied longitudinal data analysis: Modeling change and event occurrence (1st ed.). Oxford Univ. Pr. [https://doi.org/10.1093/acprof:oso/9780195152968.001.0001](https://doi.org/10.1093/acprof:oso/9780195152968.001.0001)


Türkcan, K., & Saygılı, H. (2018). Economic integration agreements and the survival of exports. *Journal of Economic Integration, 33*(1), 1046–1095. [https://doi.org/10.11130/jei.2018.33.1.1046](https://doi.org/10.11130/jei.2018.33.1.1046)

Valverde Fallas, K. (2022). *Análisis de la duración de los flujos de exportación de Costa Rica a nivel de producto mediante modelos de sobrevivencia* [Trabajo final de investigación aplicada de maestría, Universidad de Costa Rica].

## Nota de trabajo: consulta pendiente al profesor

Esta nota no forma parte del texto definitivo del artículo.

**Relaciones exportadoras activas en 2000.** La clase 1 describe el inicio desconocido del proceso bajo el apartado de truncamiento por la izquierda o entrada tardía. En nuestra base observamos relaciones que ya exportan en 2000, pero desconocemos su año real de inicio. Se desea conservarlas en el análisis y no excluirlas automáticamente por esa razón.

**Consulta:** ¿Cómo recomienda incorporar estos episodios? ¿Es adecuado contar 2000 como el primer año de seguimiento observado y analizar la continuidad desde ese punto, distinguiéndola de la duración desde el inicio real? ¿Cómo se deben combinar, o presentar por separado, estos episodios y aquellos cuyo inicio sí se observa? La decisión también afecta la interpretación del valor exportado en el primer año disponible. Los registros se mantienen mientras se resuelve esta consulta.
