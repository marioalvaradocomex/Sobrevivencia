# Revision descriptiva del archivo original; no modifica los datos.
library(readxl)

args <- commandArgs(trailingOnly = TRUE)
archivo <- if (length(args) > 0) args[1] else "data/Comercio TWN y CHN.xlsx"
datos <- read_excel(archivo)

requeridas <- c("year", "iso_chr", "pais", "subpartida", "sector_omc", "valor")
stopifnot(all(requeridas %in% names(datos)))

cat("ESTRUCTURA\n")
str(datos)
cat("\nREGISTROS POR ANIO Y DESTINO\n")
print(table(datos$year, datos$iso_chr, useNA = "ifany"))
cat("\nDATOS FALTANTES\n")
print(colSums(is.na(datos)))
cat("\nDUPLICADOS DE ANIO, DESTINO Y SUBPARTIDA\n")
print(sum(duplicated(datos[c("year", "iso_chr", "subpartida")])))
cat("\nLONGITUD DE CODIGOS DE PRODUCTO\n")
print(table(nchar(datos$subpartida), useNA = "ifany"))
cat("\nRESUMEN DEL VALOR\n")
print(summary(datos$valor))
cat("\nVALORES NO POSITIVOS\n")
print(sum(datos$valor <= 0, na.rm = TRUE))

estudio <- subset(datos, year >= 2000 & year <= 2025)
cat("\nREGISTROS EN EL PERIODO 2000-2025\n")
print(nrow(estudio))
cat("\nSUBPARTIDAS DISTINTAS POR DESTINO, SIN ARMONIZAR NOMENCLATURA\n")
print(sapply(split(estudio$subpartida, estudio$iso_chr), function(x) length(unique(x))))
cat("\nTOTALES ANUALES EN LA UNIDAD ORIGINAL DE VALOR\n")
print(aggregate(valor ~ year + iso_chr, data = estudio, FUN = sum), row.names = FALSE)

# La ausencia de una fila no se convierte en cero en esta revision.
# El usuario confirma exportaciones FOB en USD corrientes y todos los regimenes.
# Falta verificar cobertura, ceros, totales oficiales y armonizacion de codigos.
