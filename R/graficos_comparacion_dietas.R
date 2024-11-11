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

               
Sexo = c("Femenino", "Masculino") 

dietas=c("dieta 1","dieta 2","dieta 3", "dieta 1","dieta 2","dieta 3", "dieta 1","dieta 2","dieta 3", "dieta 1","dieta 2","dieta 3",
         "dieta 1","dieta 2","dieta 3", "dieta 1","dieta 2","dieta 3", "dieta 1","dieta 2","dieta 3", "dieta 1","dieta 2","dieta 3")
Grup.demog=c("1.[1, 4)",  "1.[1, 4)","1.[1, 4)", 
             "2.[4, 9)" ,"2.[4, 9)" , "2.[4, 9)",
             "3.[9, 14)", "3.[9, 14)", "3.[9, 14)",
             "4.[14, 19) ", "4.[14, 19) ","4.[14, 19) ",
             "5.[19, 31) ","5.[19, 31) ","5.[19, 31) ",
             "6.[31, 51) ", "6.[31, 51) ","6.[31, 51) ",
             "7.[51, 70)", "7.[51, 70)","7.[51, 70)",
             "8. [70 o más)",  "8. [70 o más)","8. [70 o más)" ) 

costos.fem=c(1323.2, 2586.8, 4790, 
             1728.5, 4732.9, 5759.9, 
             2396.1, 6374.3,7809.8,
             3278.2,7088.3,10697.4,
             2430.5,5734,7931.4, 
             2291.5,5623.6,7477.8, 
             2070.5,5692.3,6756.6, 
             1950.5,5491.2,6300.2)
data1=data.frame(dietas, Grup.demog, costos.fem)

cols=c("#0d3b66", "#faf0ca", "#f4d35e")
#--------comparacion grupos demograficos mujeres
ggplot(data1, aes(x=Grup.demog, y=costos.fem, group = dietas, colour =dietas)) + 
  geom_line(size=2)  + 
  geom_point( size=2, shape=21, fill="white") + 
  theme_minimal() +
  labs(#title="Comparativo costo mínimo de dietas para mujeres por grupos demográficos",
       x ="grupos etareos - años",
       y = "costo - $")+
  ylim(0,12000)+Theme1
#·--------------------------------------------------------------------------------
# comparacion grupos demograficos para hombre
costos.mas=c(1323.2, 3560.7, 4440.9, 1891.8, 4888.5,	6304.1,	2396.1, 6375, 
             7809.8,	3271, 7228.2,	10804.3, 3379.8, 6892.7, 11284.4,3193.8, 
             6608.6,	10663.4, 2602, 6251.1, 8687.5, 2427.7, 5832.3, 7841.7) 
data2=data.frame(dietas, Grup.demog, costos.mas)
ggplot(data2, aes(x=Grup.demog, y=costos.mas, group = dietas, colour =dietas)) + 
  geom_line(size=2)  + 
  geom_point( size=2, shape=21, fill="white") + 
  theme_minimal() +
  labs(#title="Comparativo costo mínimo de dietas para hombres por grupos demográficos",
       x ="grupos etareos - años",
       y = "costo - $")+
  ylim(0,12000)+Theme1

#------------------------------------------------------------------------------------
# Comparacion grupos demográficos para mujeres gestantes

dietas.ges=c("dieta 1","dieta 2","dieta 3", "dieta 1","dieta 2","dieta 3", "dieta 1","dieta 2","dieta 3")
Grup.demog.ges=c("1. (18 o menos)", "1. (18 o menos)", "1. (18 o menos)", 
             "2. (19 a 30)" ,"2. (19 a 30)" , "2. (19 a 30)" ,
             "3. (31 a 50)" ,"3. (31 a 50)" ,"3. (31 a 50)" ) 

costos.ges=c(3004.5,7854.5,9455.5,2996.8,6819,10205.6, 2857.8 ,6792.8,9732.2) 
costos.lac=c(3040.2,7080.4,9720.1,3032.5,6378.4,10254.8,2893.5,6223.2,9784.8) 

data3=data.frame(dietas.ges, Grup.demog.ges, costos.ges)
data4=data.frame(dietas.ges, Grup.demog.ges, costos.lac)

ggplot(data3, aes(x=Grup.demog.ges, y=costos.ges, group = dietas.ges, colour =dietas.ges)) + 
  geom_line(size=2)  + 
  geom_point( size=2, shape=21, fill="white") + 
  theme_minimal() +
  labs(#title="Comparativo costo mínimo de dietas para  mujeres gestantes por grupos demográficos",
       x ="grupos etareos - años",
       y = "costo - $")+
  ylim(0,12000)+Theme1

#  Comparación grupos demográficos para mujeres lactantes
ggplot(data4, aes(x=Grup.demog.ges, y=costos.lac, group = dietas.ges, colour =dietas.ges)) + 
  geom_line(size=2)  + 
  geom_point( size=2, shape=21, fill="white") + 
  theme_minimal() +
  labs(#title="Comparativo costo mínimo de dietas para  mujeres lactantes por grupos demográficos",
       x ="grupos etarios - años",
       y = "costo - $")+
  ylim(0,12000)+Theme1

#-----------------------------------------------------------------------------
data6=data.frame(
       costos.t=c(costos.lac, costos.ges),
       mujer=c(rep(c("lactante","gestante"), each=9)),
       dietas=c(dietas.ges, dietas.ges),
       grupos=rep(Grup.demog.ges,2)
)


p=ggplot(data6, aes(x=grupos, y=costos.t, group = dietas, colour =dietas)) + 
  geom_line(size=2)  + 
  geom_point( size=2, shape=21, fill="white") + 
  theme_minimal() +
  labs(#title="Comparativo costo mínimo de dietas para  mujeres lactantes por grupos demográficos",
    x ="grupos etarios - años",
    y = "costo - $")+
  ylim(0,12000) +Theme1

p + facet_wrap(~ mujer)

#=====================================================================================
# nunmero de intercambios por grupo etareo

grp.alim1.hombre =c(3.4, 4.8, 6.0, 9.0, 9.3, 8.9, 7.2, 6.0)
grp.alim2.hombre =c(2.0, 2.9, 3.8, 5.9, 5.9, 5.5, 4.5, 3.8)
grp.alim3.hombre =c(2.0, 2.9, 3.8, 5.9, 5.9, 5.5, 4.5, 3.8)
grp.alim4.hombre =c(4.4, 6.0, 6.6, 8.8, 8.8, 8.3, 6.7, 6.5)
grp.alim5.hombre =c(3.0, 3.8, 4.4, 5.9, 5.5, 5.5, 4.5, 5.5)
grp.alim6.hombre =c(1.0, 1.9, 3.3, 3.5, 3.3, 3.3, 2.7, 3.3)

data5=data.frame(grp.alim1.hombre, grp.alim2.hombre,grp.alim3.hombre,
           grp.alim4.hombre, grp.alim5.hombre, grp.alim6.hombre)
data5=as.matrix(data5)
barplot(t(data5))

grp.etareo1=c(3.4,2,2,4.4,3,1)
grp.etareo2=c(4.8,2.9,2.9,6,3.8,1.9)
grp.etareo3=c(6,3.8,3.8,6.6,4.4,3.3)
grp.etareo4=c(9,5.9,5.9,8.8,5.9,3.5)
grp.etareo5=c(9.3,5.9,5.9,8.8,5.5,3.3)
grp.etareo6=c(8.9,.5,5.5,8.3,.5,3.3)
grp.etareo7=c(7.2,4.5,4.5,6.7,4.5,2.7)
grp.etareo8=c(6,3.8,3.8,6.5,5.5,3.3)
              
data5=data.frame(grp.etareo1, grp.etareo2,grp.etareo3, grp.etareo4,
                 grp.etareo5, grp.etareo6, grp.etareo7, grp.etareo8)
data5=as.matrix(data5)

rng.etareos=c("1 a 3", "4 a 8", "9 a 13", "14 a 18", "19 a 30","31 a 50", "51 a 70", "70 o más")
grupos.alimentos=c("Cereales,..", "Verduras,..", "Leche,...", "Carnes,...", "Grasas", "Azúcares")
cols=c("#FAF0CA","#84A98C", "#EBEBEB", "#F24236", "#F5F749","#F6F5AE" )
colnames(data5)=rng.etareos
rownames(data5)=grupos.alimentos
barplot(data5, ylim = c(0,40), col = cols)
legend("topleft",grupos.alimentos , cex = 1.3, fill = cols)
#===============================================================================

