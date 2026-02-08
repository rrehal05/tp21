df<-read.csv("fao.csv", sep=";", dec=",", header = TRUE)

nrow(df)

sd(df$Export_viande, na.rm=TRUE)
sd(df$Import_viande, na.rm=TRUE)

median(df$Prod_viande, na.rm=TRUE)

quantile(df$Dispo_alim)

quantile(df$Import_viande, seq(0,1,0.01))

rang = order(df$Population)
resultat = head(df[ rang , ], n = 5)
View(resultat)

rang = order(df$Population, decreasing = TRUE)
resultat = head(df[ rang , ], n = 5)
View(resultat)

rang = order(df$Import_viande, decreasing = TRUE)
resultat = head(df[ rang , ], n = 5)
View(resultat)

resultat = subset(df, Dispo_alim>=2300)
View(resultat)

resultat = subset(df, Nom %in% c("France","Belgique"))
View(resultat)

df$Part_export<-df$Export_viande/df$Prod_viande

df$Dispo_alim_pays<-df$Dispo_alim*df$Population

write.table(x = df, file = "ExportTp2.csv")

dispo_alim_mondiale = sum(df$Dispo_alim_pays, na.rm=TRUE)
dispo_alim_mondiale

dispo_alim_mondiale/2300

plot(x = df$Prod_viande,
     y = df$Export_viande, 
     main = "Pays : Prod_viande / Export_viande")

cor(x = df$Prod_viande,
    y = df$Export_viande)

#commande à executer qu'une seule fois
install.packages("corrplot")

library(corrplot) #je charge mon package pour pouvoir utiliser ses fonctionalités
corrplot(matriceCor, method="circle")