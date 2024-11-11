# calculos.R
# este código permite guardar el listado de los alimentos que requieren imputación 
# de sus valores de contenido 


# install.packages("devtools")
# library(devtools)
# devtools::install_github("Foodprice/Foodprice", force = TRUE)
 library(Foodprice)
 library(dplyr)

source("R/funciones.R")

# GENERACION DE ARCHIVOS .rsd y txt
# Medellin----------------------------------------------------------------------
 # Redirigir la salida de la consola al archivo output.txt
 sink("txt-imputacion/output_Medellin.txt")
  # Llamar a la función y almacenar todos los datos en la variable 'data_total'
data_total_medellin <- data_costos(2013, 2023, "Medellin")
# Convertir la lista a un data.frame
data_total_df_medellin <- bind_rows(data_total_medellin, .id = "year_month")
# Guarda lo procesado
saveRDS(data_total_df_medellin, file = "data/Medellin.rsd")
# Cerrar la redirección de la salida a la consola
sink()
#-------------------------------------------------------------------------------

# Cali -------------------------------------------------------------------------
# Redirigir la salida de la consola al archivo output.txt
sink("txt-imputacion/output_Cali.txt")
# Llamar a la función y almacenar todos los datos en la variable 'data_total'
data_total_cali <- data_costos(2013, 2023, "Cali")
# Convertir la lista a un data.frame
data_total_df_cali <- bind_rows(data_total_cali, .id = "year_month")
# Guarda lo procesado
saveRDS(data_total_df_cali, file = "data/Cali.rsd")
# Cerrar la redirección de la salida a la consola
sink()
#-------------------------------------------------------------------------------

# Bogota -----------------------------------------------------------------------
# Redirigir la salida de la consola al archivo output.txt
sink("txt-imputacion/output_Bogota.txt")
# Llamar a la función y almacenar todos los datos en la variable 'data_total'
data_total_bogota <- data_costos(2013, 2023, "Bogota")
# Convertir la lista a un data.frame
data_total_df_bogota <- bind_rows(data_total_bogota, .id = "year_month")
# Guarda lo procesado
saveRDS(data_total_df_bogota, file = "data/Bogota.rsd")
# Cerrar la redirección de la salida a la consola
sink()
#-------------------------------------------------------------------------------

# Barranquilla -------------------------------------------------------------------------
# Redirigir la salida de la consola al archivo output.txt
sink("txt-imputacion/output_Barranquilla.txt")
# Llamar a la función y almacenar todos los datos en la variable 'data_total'
data_total_barranquilla <- data_costos(2013, 2023, "Barranquilla")
# Convertir la lista a un data.frame
data_total_df_barranquilla <- bind_rows(data_total_barranquilla, .id = "year_month")
# Guarda lo procesado
saveRDS(data_total_df_barranquilla, file = "data/Barranquilla.rsd")
# Cerrar la redirección de la salida a la consola
sink()
#-------------------------------------------------------------------------------

# Pasto -------------------------------------------------------------------------
# Redirigir la salida de la consola al archivo output.txt
sink("txt-imputacion/output_Pasto.txt")
# Llamar a la función y almacenar todos los datos en la variable 'data_total'
data_total_pasto <- data_costos(2013, 2023, "Pasto")
# Convertir la lista a un data.frame
data_total_df_pasto <- bind_rows(data_total_pasto, .id = "year_month")
# Guarda lo procesado
saveRDS(data_total_df_pasto, file = "data/Pasto.rsd")
# Cerrar la redirección de la salida a la consola
sink()
#-------------------------------------------------------------------------------

# Cartagena -------------------------------------------------------------------------
# Redirigir la salida de la consola al archivo output.txt
sink("txt-imputacion/output_Cartagena.txt")
# Llamar a la función y almacenar todos los datos en la variable 'data_total'
data_total_cartagena <- data_costos(2013, 2023, "Cartagena")
# Convertir la lista a un data.frame
data_total_df_cartagena <- bind_rows(data_total_cartagena, .id = "year_month")
# Guarda lo procesado
saveRDS(data_total_df_cartagena, file = "data/Cartagena.rsd")
# Cerrar la redirección de la salida a la consola
sink()
#-------------------------------------------------------------------------------

# Cucuta -------------------------------------------------------------------------
# Redirigir la salida de la consola al archivo output.txt
sink("txt-imputacion/output_Cucuta.txt")
# Llamar a la función y almacenar todos los datos en la variable 'data_total'
data_total_cucuta <- data_costos(2013, 2023, "Cucuta")
# Convertir la lista a un data.frame
data_total_df_cucuta <- bind_rows(data_total_cucuta, .id = "year_month")
# Guarda lo procesado
saveRDS(data_total_df_cucuta, file = "data/Cucuta.rsd")
# Cerrar la redirección de la salida a la consola
sink()
#-------------------------------------------------------------------------------

# Bucaramanga -------------------------------------------------------------------------
# Redirigir la salida de la consola al archivo output.txt
sink("txt-imputacion/output_Bucaramanga.txt")
# Llamar a la función y almacenar todos los datos en la variable 'data_total'
data_total_bucaramanga <- data_costos(2013, 2023, "Bucaramanga")
# Convertir la lista a un data.frame
data_total_df_bucaramanga <- bind_rows(data_total_bucaramanga, .id = "year_month")
# Guarda lo procesado
saveRDS(data_total_df_bucaramanga, file = "data/Bucaramanga.rsd")
# Cerrar la redirección de la salida a la consola
sink()
#-------------------------------------------------------------------------------

# Pereira -------------------------------------------------------------------------
# Redirigir la salida de la consola al archivo output.txt
sink("txt-imputacion/output_Pereira.txt")
# Llamar a la función y almacenar todos los datos en la variable 'data_total'
data_total_pereira <- data_costos(2013, 2023, "Pereira")
# Convertir la lista a un data.frame
data_total_df_pereira <- bind_rows(data_total_pereira, .id = "year_month")
# Guarda lo procesado
saveRDS(data_total_df_pereira, file = "data/Pereira.rsd")
# Cerrar la redirección de la salida a la consola
sink()
#-------------------------------------------------------------------------------

# Manizales -------------------------------------------------------------------------
# Redirigir la salida de la consola al archivo output.txt
sink("txt-imputacion/output_Manizales.txt")
# Llamar a la función y almacenar todos los datos en la variable 'data_total'
data_total_manizales <- data_costos(2013, 2023, "Manizales")
# Convertir la lista a un data.frame
data_total_df_manizales <- bind_rows(data_total_manizales, .id = "year_month")
# Guarda lo procesado
saveRDS(data_total_df_manizales, file = "data/Manizales.rsd")
# Cerrar la redirección de la salida a la consola
sink()
#-------------------------------------------------------------------------------

# Ibagué -------------------------------------------------------------------------
# Redirigir la salida de la consola al archivo output.txt
sink("txt-imputacion/output_Ibague.txt")
# Llamar a la función y almacenar todos los datos en la variable 'data_total'
data_total_ibague <- data_costos(2013, 2023, "Ibague")
# Convertir la lista a un data.frame
data_total_df_ibague <- bind_rows(data_total_ibague, .id = "year_month")
# Guarda lo procesado
saveRDS(data_total_df_ibague, file = "data/Ibague.rsd")
# Cerrar la redirección de la salida a la consola
sink()
#-------------------------------------------------------------------------------

# Villavicencio -------------------------------------------------------------------------
# Redirigir la salida de la consola al archivo output.txt
sink("txt-imputacion/output_Villavicencio.txt")
# Llamar a la función y almacenar todos los datos en la variable 'data_total'
data_total_villavicencio <- data_costos(2013, 2023, "Villavicencio")
# Convertir la lista a un data.frame
data_total_df_villavicencio <- bind_rows(data_total_villavicencio, .id = "year_month")
# Guarda lo procesado
saveRDS(data_total_df_villavicencio, file = "data/Villavicencio.rsd")
# Cerrar la redirección de la salida a la consola
sink()
#-------------------------------------------------------------------------------
# 
# # Santa Marta -------------------------------------------------------------------------
# # Redirigir la salida de la consola al archivo output.txt
# sink("txt-imputacion/output_SantaMarta.txt")
# # Llamar a la función y almacenar todos los datos en la variable 'data_total'
# data_total_santamarta <- data_costos(2013, 2023, "Santa Marta (Magdalena)")
# # Convertir la lista a un data.frame
# data_total_df_santamarta <- bind_rows(data_total_santamarta, .id = "year_month")
# # Guarda lo procesado
# saveRDS(data_total_df_santamarta, file = "data/SantaMarta.rsd")
# # Cerrar la redirección de la salida a la consola
# sink()
# #-------------------------------------------------------------------------------
# 






