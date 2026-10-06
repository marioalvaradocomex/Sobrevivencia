# Verificación de fuentes de la introducción

Fecha de revisión: 5 de octubre de 2026.

Documento de apoyo para revisar el [borrador del artículo](Articulo_supervivencia_exportaciones.md). No forma parte del texto de la introducción ni sustituye su bibliografía. Los párrafos se numeran desde el primer párrafo bajo «Introducción», sin contar las preguntas.

## Tabla de verificación

| Párrafo | Afirmación o función | Fuente y acceso | Dónde comprobarlo | Alcance del respaldo |
| --- | --- | --- | --- | --- |
| 1 | El intercambio comercial con China antecede al establecimiento de relaciones diplomáticas. | [COMEX: Tratado con China](https://www.comex.go.cr/tratados/china/). Español; página pública. | Apartado «Sobre el Tratado», párrafo que menciona el intercambio comercial desde principios de los años 90. | Respalda el antecedente histórico. La distinción entre inicio del comercio y cambio del contexto institucional es la interpretación que hacemos de esa cronología. |
| 2 | Costa Rica cambió su reconocimiento diplomático de Taiwán a China en 2007. | Esteban Rodríguez (2013): [PDF local](<bibliografía/Esteban_Rodriguez_2013.pdf>) y [texto completo en español](https://www.scielo.cl/scielo.php?script=sci_arttext&pid=S0718-090X2013000200005). | P. 513, resumen; p. 515, primer párrafo; p. 525, párrafos sobre la ruptura de San José con Taipéi. Páginas 1, 3 y 13 del PDF. | Antecedente histórico, no evidencia de un efecto sobre la supervivencia exportadora. |
| 2 | Las relaciones diplomáticas con China se establecieron a partir del 1 de junio de 2007. | [Comunicado conjunto oficial](https://www.rree.go.cr/files/includes/files.php?id=2002&tipo=instrumento). Español; una página. [Ficha oficial del instrumento](https://www.rree.go.cr/?cat=convenios&cont=610&instrumento=1625&sec=exterior). | Primer párrafo del comunicado y fecha al final. | La fecha de establecimiento no debe confundirse con la fecha del anuncio público. |
| 2 | El acercamiento a China respondió, entre otros factores, a expectativas de oportunidades comerciales, inversión y mayor proyección internacional de Costa Rica. | Esteban Rodríguez (2013), PDF local y texto completo enlazados arriba. | P. 516 (página 4 del PDF), explicación de las motivaciones costarricenses; pp. 525–526 (páginas 13–14), apartado «V. Oportunidades de comercio e inversión». | Es la explicación del autor sobre las motivaciones y expectativas de la decisión política; no demuestra beneficios comerciales efectivamente obtenidos. La conexión con nuestra pregunta de supervivencia es una justificación propia. |
| 3 | La negociación del TLC comenzó en noviembre de 2008 y el tratado entró en vigor el 1 de agosto de 2011. | [COMEX: Tratado con China](https://www.comex.go.cr/tratados/china/). | «Sobre el Tratado»: línea de entrada en vigor y párrafo que comienza con la referencia a noviembre de 2008. | Fechas oficiales. Separar ambos acontecimientos en el análisis es una decisión de esta investigación. |
| 4 | La continuidad de los flujos es relevante para el crecimiento y la diversificación exportadora. | Brenton et al. (2010): [PDF local](<bibliografía/Brenton_Saborowski_vonUexkull_2010.pdf>) y [PDF abierto del Banco Mundial](https://documents1.worldbank.org/curated/en/841611468162555358/pdf/776500JRN020100hat0Explains0the0Low.pdf). Inglés. | P. 474, resumen, y p. 475, párrafo que comienza «From a practical policy perspective». Páginas 1 y 2 del PDF. | Se utiliza el argumento general sobre la permanencia; no se trasladan sus resultados numéricos a Costa Rica ni se adopta automáticamente su modelo. |
| 5 | Comparar destinos y períodos puede complementar la descripción de los montos exportados. | Planteamiento propio del estudio. | Párrafo 5 del borrador. | Es una justificación y un aporte esperado, no un resultado ni una afirmación de que nadie haya investigado antes el tema. |
| 6 | La información disponible está organizada por año, subpartida y destino; se estudiará 2000–2025. | [Archivo de PROCOMER](<data/Comercio TWN y CHN.xlsx>), hoja `Sheet0`; [script de revisión](Revisar_base_PROCOMER.R). | Columnas `year`, `iso_chr` y `subpartida`; salida «REGISTROS POR ANIO Y DESTINO» del script. | El archivo incluye 2026, pero se excluye por decisión del estudio. La frecuencia anual describe este archivo, aunque la fuente permita descargas mensuales. |
| 6 y preguntas | La comparación será observacional y no se asumirá causalidad. | Delimitación propia del estudio. | Párrafo 6 y preguntas de investigación. | No se ha estimado todavía ningún efecto ni se ha definido una estrategia de identificación causal. |

## Lectura mínima sugerida

1. **COMEX:** los párrafos iniciales de «Sobre el Tratado», para comprobar el antecedente comercial y las fechas del TLC.
2. **Comunicado diplomático:** primer párrafo y fecha de firma; el documento tiene una página.
3. **Esteban Rodríguez:** p. 516 y apartado «V. Oportunidades de comercio e inversión», pp. 525–526, para comprobar las motivaciones económicas y diplomáticas. Corresponden a las páginas 4 y 13–14 del PDF. La ruptura con Taiwán también se menciona en p. 525. El artículo está en español.
4. **Brenton et al.:** resumen de la primera página y párrafo indicado en la segunda. Paráfrasis orientativa en español: estudiar la expansión exportadora requiere atender también a la permanencia de los flujos. Esta explicación no es una cita textual.

No es necesario leer completas las dos investigaciones para verificar los argumentos utilizados en esta primera versión. Sus secciones metodológicas y resultados se revisarán con mayor detalle al desarrollar la revisión bibliográfica.

## Revisión inicial de la base

La revisión se realizó con `readxl` en R, sin modificar el Excel original. El script puede ejecutarse desde `Trabajo_Final` con `Rscript Revisar_base_PROCOMER.R`, o indicando como argumento la ruta al Excel.

| Comprobación | Resultado |
| --- | --- |
| Archivo y hoja | `data/Comercio TWN y CHN.xlsx`, `Sheet0`. |
| Filas y columnas | 6.831 filas de datos y 6 columnas. |
| Variables | `year`, `iso_chr`, `pais`, `subpartida`, `sector_omc`, `valor`. |
| Cobertura temporal observada | Hay registros para todos los años de 2000 a 2026 en ambos destinos. Esto no verifica por sí solo que cada año esté completo. |
| Destinos | `CHN` y `TWN`. Se usarán China y Taiwán como nombres en el artículo, sin modificar las etiquetas originales del Excel. |
| Período seleccionado | 2000–2025: 6.588 registros, antes de depurar o construir los períodos de duración. |
| Registros de 2026 excluidos | 243. |
| Duplicados año–destino–subpartida | Ninguno. |
| Datos faltantes explícitos | Ninguno en las seis columnas. Esto no descarta filas ausentes o problemas de cobertura. |
| Longitud de las subpartidas | Todos los códigos tienen seis caracteres y fueron importados como texto, conservando ceros iniciales. |
| Valores no positivos | 692 registros en el archivo completo 2000–2026. No se clasificaron automáticamente como relaciones activas ni como interrupciones. |
| Unidad de `valor` | El usuario confirmó valores FOB en dólares corrientes, sin divisiones de escala. Esta información no aparece como metadato en el Excel. |
| Regímenes | El usuario confirmó que la descarga incluye todos los regímenes. El archivo no contiene una variable de régimen. |

### Pendientes antes de construir la supervivencia

- Confirmar la versión de la nomenclatura de las subpartidas y si PROCOMER armonizó los códigos históricos. Un cambio de código no debe confundirse con una salida del mercado.
- Verificar cobertura anual, filtros de descarga y concordancia de los totales con las estadísticas oficiales comparables. No se incorporaron montos agregados en la introducción.
- Distinguir valores exactamente cero de posibles valores negativos, ajustes o redondeos, y definir cuándo una fila ausente representa ausencia de exportaciones.
- Decidir cómo tratar relaciones ya activas en 2000, reingresos después de una interrupción y censura al cierre de 2025.
- Definir el tratamiento de los años de transición diplomática y comercial. La duración de una relación y el año calendario no son la misma variable.

## Criterios de referencias

- El artículo incluye citas autor–año y referencias en formato APA 7. Las páginas indicadas aquí facilitan la revisión de las paráfrasis.
- COMEX se registra sin fecha (`s. f.`), porque la página consultada no identifica una fecha de publicación del texto; se añade la fecha de consulta por ser una página actualizable.
- La referencia de PROCOMER remite al [Portal estadístico](https://servicios.procomer.go.cr/PortalEstadistico/), cuyo enlace proporcionó el usuario. A su solicitud se utiliza 2026 para identificar la base consultada ese año, no como fecha comprobada de publicación original del sitio. El portal presenta información actualizada a agosto de 2026 y se consultó el 5 de octubre de 2026; esta fecha de consulta no equivale necesariamente a la fecha de descarga del Excel. El archivo local se conserva como respaldo de los datos utilizados.
- El portal muestra la variable FOB en miles de dólares, mientras el usuario confirmó que el Excel está expresado en dólares sin divisiones de escala. Antes de publicar montos, verificar la conversión entre la descarga y el archivo recibido; no se modificaron sus valores.
- Los autores del comunicado son los dos gobiernos firmantes; la Cancillería costarricense aloja el documento.
- Se guardaron copias de los dos artículos científicos en `bibliografía`. No se incorporaron las tesis como referencias de esta introducción porque no se usaron afirmaciones de ellas en la redacción.
- Esta introducción utiliza dos artículos científicos, dos fuentes institucionales y la base de datos. Esto no completa el mínimo de cinco artículos sustantivos y uno metodológico adicional previsto para la revisión de literatura del trabajo.
- El Word de instrucciones estaba bloqueado por otro proceso durante esta revisión. Se conservaron las indicaciones ya registradas en el artículo, incluido el máximo de dos páginas para la introducción. La extensión en páginas deberá comprobarse cuando se defina el formato final.
