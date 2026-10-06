# Revisión de literatura: fuentes y variables candidatas

Documento de apoyo para revisar el apartado del artículo y discutir las variables con quien desarrollará la metodología. No establece un modelo definitivo. Consulta: 5 de octubre de 2026.

## Fuentes y lectura puntual

Las afirmaciones se contrastaron con el texto completo, especialmente las secciones que se indican abajo. No se presentan resultados de otros países como resultados esperados necesariamente para Costa Rica.

| Fuente | Qué respalda | Ubicación para comprobarlo | Acceso |
| --- | --- | --- | --- |
| Brenton et al. (2010) | Fragilidad de los flujos y relevancia de la experiencia en productos y mercados. | Resumen, p. 474, y conclusiones, p. 497; páginas 1 y 24 del PDF. | [PDF local](bibliograf%C3%ADa/Brenton_Saborowski_vonUexkull_2010.pdf). |
| Lawless y Studnicka (2024) | La relación entre experiencia y supervivencia depende de otras características; relevancia del valor inicial. | Resumen, p. 215; sección 5.1 y cuadro 3, pp. 227–229; discusión final, pp. 235–236. | [Texto completo abierto](https://link.springer.com/article/10.1007/s11079-023-09727-4) y [PDF del editor](https://link.springer.com/content/pdf/10.1007/s11079-023-09727-4.pdf). La descarga local devolvió una página de verificación, no un PDF; no se conserva como artículo descargado. |
| Türkcan y Saygılı (2018) | Diferencias por tipo de producto y por inicio de la relación antes o después del acuerdo. | Resultados, pp. 1069–1070, y conclusión, p. 1081; páginas 24–25 y 36 del PDF. | [PDF local](bibliograf%C3%ADa/Turkcan_Saygili_2018.pdf). |
| Nkansah et al. (2022) | Asociación de los acuerdos con la supervivencia y diferencias por grupos de productos. | Resumen y sección 4.2; en particular páginas 15–16 del PDF, texto que acompaña los cuadros 4 y 5. | [PDF local](bibliograf%C3%ADa/Nkansah_et_al_2022.pdf), obtenido de la [Biblioteca Nacional de Alemania](https://d-nb.info/1266287795/34); [texto del editor](https://link.springer.com/article/10.1007/s44232-022-00001-z). |
| Sandoval Alvarado (2018) | Antecedente nacional con información de empresas y diferencias por régimen, sector y acuerdo. | Datos, pp. 6–7; conclusiones, pp. 30–31; páginas 7–8 y 31–32 del PDF. | [Tesis local](bibliograf%C3%ADa/Sobrevivencia_export_CatalinaSandoval.pdf). |
| Valverde Fallas (2022) | Antecedente nacional a nivel de producto; valor inicial, interrupciones previas, sector y TLC. | Conclusiones, pp. 41–44; páginas 48–51 del PDF. | [Tesis local](bibliograf%C3%ADa/PP_Kimberly%20_Duraci%C3%B3n_exportaciones%20080922_KV_GB.pdf). |
| Esteban Rodríguez (2013) | Interpretación política de las decisiones diplomáticas, no estimación de supervivencia. | Resumen, p. 513, y discusión de intereses económicos, pp. 525–526; páginas 1 y 13–14 del PDF. | [PDF local](bibliograf%C3%ADa/Esteban_Rodriguez_2013.pdf). |

Para una lectura rápida, empezar por las conclusiones de Valverde Fallas, la conclusión de Türkcan y Saygılı, y el resumen y los resultados señalados de Lawless y Studnicka. Los demás localizadores permiten comprobar los párrafos restantes sin leer íntegramente cada documento.

## Pistas para definir variables

Estas son propuestas para nuestro estudio, no una reproducción literal de las variables de las fuentes. Conviene separar las variables de interés, relacionadas con las preguntas, de las posibles variables de ajuste.

| Variable candidata | Justificación y papel | Disponibilidad y precaución |
| --- | --- | --- |
| Destino: Taiwán o China | Variable de interés para comparar mercados. | Disponible en `iso_chr` y `pais`. Por sí sola no identifica el cambio posterior a 2007. |
| Período calendario y su combinación con destino | Permitir que el cambio posterior a 2007 difiera entre los dos mercados. | Se deriva del año. No bastaría un único indicador posterior a 2007 que imponga la misma asociación para ambos destinos. Los años de transición requieren una decisión explícita. |
| Vigencia del TLC con China | Separar el segundo hito institucional del cambio diplomático. | Se construye con destino y año, usando la fecha de COMEX. No es equivalente a un indicador posterior a 2011 aplicado a ambos mercados. La codificación debe evitar redundancias con destino y período. |
| Valor inicial de cada episodio exportador | Posible ajuste por escala inicial, motivado por Lawless y Studnicka y Valverde Fallas. | Se deriva de `valor` una vez definidos los episodios; considerar el logaritmo del valor positivo. No es tamaño de la empresa. Como son dólares corrientes, revisar comparabilidad temporal. |
| Sector agrícola o industrial | Posible ajuste por composición del producto, cercano al antecedente de Valverde Fallas. | Disponible en `sector_omc`. No mide complejidad tecnológica ni equivale a partes/componentes frente a bienes finales. No anticipar un signo universal. |
| Antecedentes de interrupción e inactividad | Posible ajuste por trayectoria previa, motivado por la tesis de Valverde Fallas. | Construible solo dentro de la ventana observada. Usar episodios terminados antes del episodio analizado o años de inactividad previos, no información futura. No llamarlo experiencia empresarial. |
| Tamaño de la economía de destino | Extensión posible, presente en los resultados de Türkcan y Saygılı. | Requiere series externas comparables para ambos destinos. No está en el Excel y no es indispensable incorporarlo para este primer planteamiento. |

Como punto de partida para discutir con el compañero, priorizar **destino y contexto institucional**, y evaluar **sector y valor inicial** como ajustes. La historia previa puede incorporarse si se decide estudiar reingresos y se reconstruye con suficiente calidad. Esto no significa incluir todas las variables de la tabla simultáneamente.

## Límites que deben acompañar esa elección

- La base no tiene identificador de empresa, empleo, productividad ni régimen individual. No permite copiar esos predictores de estudios con información empresarial. Su cobertura de dos destinos tampoco permite medir diversificación mundial.
- Con solo dos destinos, la distancia fija a cada uno queda absorbida por el indicador de destino; no se puede estimar separadamente de este. Otras características constantes o sin variación tampoco aportarían identificación adicional.
- La duración del episodio es el tiempo del análisis, no una covariable calculada con el futuro. El año calendario representa otra dimensión. Una relación que atraviesa 2007 o 2011 cambia de contexto durante su trayectoria; clasificarla solo por el año de inicio no describe toda su exposición.
- El valor cero del año que define una interrupción no debe introducirse como predictor contemporáneo del mismo evento. El valor inicial evita ese problema, pero, si se determina después del cambio institucional, podría reflejar parte de ese cambio. Ajustar por él modifica la comparación y no resuelve la identificación causal.
- Antes de reconstruir episodios, confirmar armonización de subpartidas, cobertura, escala monetaria y significado de ceros o filas ausentes. Un código que cambia no demuestra una interrupción comercial.
- Las relaciones activas en 2000 tienen un inicio previo potencialmente desconocido. Su primer monto observado no es necesariamente el verdadero valor inicial. La metodología deberá resolver ese caso y la censura al cierre de 2025.
- Tener muchos productos no equivale a observar muchas intervenciones diplomáticas independientes. La comparación de dos destinos exige cautela con acontecimientos simultáneos y con la incertidumbre estadística; no constituye por sí sola una evaluación causal.

## Referencias y requisitos de la monografía

- El apartado utiliza cinco artículos sustantivos: Brenton et al.; Lawless y Studnicka; Türkcan y Saygılı; Nkansah et al.; y Esteban Rodríguez. Cuatro se refieren a supervivencia exportadora y uno al contexto político. Las dos tesis son antecedentes adicionales, no se cuentan como artículos.
- Queda pendiente incorporar un artículo metodológico adicional en coordinación con el compañero y los métodos elegidos. No se modificó la sección de metodología.
- Se añadieron las referencias citadas a la bibliografía del artículo con formato autor–año y DOI cuando corresponde. Las tesis se identifican como trabajos de maestría, con la información de sus portadas, sin inventar un repositorio público.
- Lawless y Studnicka apareció en línea en 2023, pero el volumen definitivo corresponde a 2024; se cita 2024.
- La portada de Sandoval Alvarado dice 2018 y el título contiene 1998–2016. Sus objetivos y sección de datos indican 1999–2016; se conserva el título original en la referencia y se utiliza el período analítico en la revisión. No se copia el año 2017 con que la cita la otra tesis.
- La relación entre hallazgos y posibles predictores es nuestra síntesis. No se afirma que las fuentes hayan demostrado esos mismos resultados para Taiwán y China ni que esta selección agote la literatura disponible.
