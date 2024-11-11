library(readr)
library(ggplot2)
# Tamaños de letras graficos con ggplot2
Theme1 = theme(
  axis.title.x = element_text(size = 18),
  axis.text.x = element_text(size = 18),
  axis.title.y = element_text(size = 18),
  axis.text = element_text( size = 18),
  legend.title = element_text(size = 18),
  legend.text = element_text(size = 18),  
  strip.text = element_text(size=25))         # tamaño letra por grupos

costos <- read_csv("Documentos/Javeriana/repository/footprice/docs/costosD123.csv")
#       GESTANTES,HOMBRE , LACTANTE,  MUJER 
#       ROSADO ,  AZUL      AMARILLO,  GRIS
#cols=c("#FF6B6C","#5B5F97","#FFC145","#B8B8D1")
cols=c("#D78521","#1E2EDE","#53FF45","#DE1A1A")

#  c("#203738", "#FF8F2D", "#DE6B07", "9B3A04")
#--------comparacion grupos etarios para dieta 1 -----------------------------------
ggplot(costos, aes(x=gr.etario, y=costo.d1, group = sexo, colour =sexo)) + 
  geom_line(size=2)  + 
  scale_color_manual(values=cols) +
  scale_x_continuous( breaks =c(1:8), 
                      labels = c("[1 , 4)", "[4, 9)", "[9, 14)", "[14, 19)", "[19, 31)", "[31, 51)", "[51, 70)", "[70 o más)"))+
  geom_point( size=2, shape=21, fill="white") + 
  theme_minimal() +
  labs(title="Dieta 1",
    x ="grupos etarios - años",
    y = "costo - $")+
  ylim(0,12000)+Theme1

#-------------------------------------------------------------------------------------

ggplot(costos, aes(x=gr.etario, y=costo.d2, group = sexo, colour =sexo)) + 
  geom_line(size=2)  + 
  scale_color_manual(values=cols) +
  scale_x_continuous( breaks =c(1:8), 
                      labels = c("[1 , 4)", "[4, 9)", "[9, 14)", "[14, 19)", "[19, 31)", "[31, 51)", "[51, 70)", "[70 o más)"))+
  geom_point( size=2, shape=21, fill="white") + 
  theme_minimal() +
  labs(title="Dieta2",
    x ="grupos etarios - años",
    y = "costo - $")+
  ylim(0,12000)+Theme1

#-------------------------------------------------------------------------------------

ggplot(costos, aes(x=gr.etario, y=costo.d3, group = sexo, colour =sexo)) + 
  geom_line(size=2)  + 
  scale_color_manual(values=cols) +
  scale_x_continuous( breaks =c(1:8), 
                      labels = c("[1 , 4)", "[4, 9)", "[9, 14)", "[14, 19)", "[19, 31)", "[31, 51)", "[51, 70)", "[70 o más)"))+
  geom_point( size=2, shape=21, fill="white") + 
  theme_minimal() +
  labs(title="Dieta 3",
    x ="grupos etarios - años",
    y = "costo - $")+
  ylim(0,12000)+Theme1

#-------------------------------------------------------------------------------------

