

##########
#CONEXION#
##########

library(odbc)
library(yaml)
library(DBI)



config <- yaml.load_file("credenciales.yml")

conn <- DBI::dbConnect(odbc::odbc(),
                       Driver  = config$driver,
                       UID   = config$user,
                       PWD   = config$password,
                       Server   = config$host,
                       Database   = config$database
)

# data --------------------------------------------------------------------
comercio_asia <- dbGetQuery(conn, 
                          paste0("SELECT [year], iso_chr, pais, b.subpartida, ds.sector_omc, SUM(valor) as valor_USD ",
                          "FROM COMEX.dbo.basex b ",
                          "LEFT JOIN COMEX.dbo.dim_sectoromc ds ON ds.subpartida = b.subpartida ",
                          "WHERE manual6 = 1  AND iso_chr IN ('CHN','HKG','IND','JPN','KOR','MYS','PAK','SGP','TWN')  ",
                          "AND ds.sector_omc IS NOT NULL AND valor > 1",
                          "GROUP BY [year], iso_chr, pais, b.subpartida, ds.sector_omc"))



save(comercio_asia, file = "comercio_asia.RData")

