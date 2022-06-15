### Importation des données
df1<-read.csv("monnaieencirculation.csv")
as.numeric(df1$annee)

### Prenons uniquement des données sur l'année 1990. jan 90 : dec 1990
df1

### Monnaie_en_circulation<-MEC


### Arrangeons les données
library("tidyr")

### Traçons les graphiques
library(ggplot2)

### Nuage de points
ggplot(data=df1,aes(x=annee, y=MEC,linetype=MEC, colour="brown"))+
  geom_point(size=3, shape=1, colour="brown")


    ### 2) Diagramme en ligne
ggplot(df1)+
  geom_line(aes(x=annee, y=MEC))
  theme_classic()

    ### 3) Diagramme en bâton 
ggplot(data=df1, aes(x=annee, y=MEC, colour="brown"))+
  geom_bar(stat="identity")
  
