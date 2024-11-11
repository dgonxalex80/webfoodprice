# 02-importar-bases-datos.R
source("R/01-cargar-paquetes.R")

# data por ciudades
Barranquilla <-readRDS("data/Barranquilla.rsd")
Bogota <-readRDS("data/Bogota.rsd")
Bucaramanga <-readRDS("data/Bucaramanga.rsd")
Cali <-readRDS("data/Cali.rsd")
Cartagena <-readRDS("data/Cartagena.rsd")
Cucuta <-readRDS("data/Cucuta.rsd")
Ibague <-readRDS("data/Ibague.rsd")
Manizales <-readRDS("data/Manizales.rsd")
Medellin <-readRDS("data/Medellin.rsd")
Pasto <-readRDS("data/Pasto.rsd")
Pereira <-readRDS("data/Pereira.rsd")
Villavicencio <-readRDS("data/Villavicencio.rsd")


# carga de mapas
COL <- read_sf("map/COL_adm0.shp")
COLdep <- read_sf("map/COL_adm1.shp")
COLmun <- read_sf("map/COL_adm2.shp")