nuevo_dir<- "C:/pr5_21feb"
setwd(nuevo_dir)

1#
n <- 200
set.seed(123)

sites <- sample(c("site1","site2", "site3", "site4", "site5", "site6", "site7", "site8", "site9", "site10"), n, replace = TRUE)

artifact_types <- sample(c("ceramica", "tools","joyas","armas"), n, replace = TRUE)
                         
num_artifacts <- sample(1:1000, n, replace = TRUE)

contexts <- sample(c("habitacional", "Funerario", "Otros"), n, replace = TRUE)

latitude <- sample(0:90, n, replace = T)
longitude <- sample(-180:180, n, replace = T)

archaeology_data <- data.frame(
  sites = sites,
  artifact_types = artifact_types,
  num_artifacts = num_artifacts,
  contexts = contexts,
  latitude = latitude,
  longitude = longitude
)

print(archaeology_data)
View(archaeology_data)


2#

media <- mean(num_artifacts)
print(media)

cuartiles_artefactos = quantile(num_artifacts)
print(cuartiles_artefactos)
3#
historiograma  <- hist(num_artifacts)

4#
grafico_artefactos = boxplot(num_artifacts, main = "numero de artefactos")
$ el resultado es 450

6#

mapa_de_calor = ggplot(archaeology_data, aes( x = longitude, y = latitude)) +
  geom_bin2d() +
  labs(title = "Artifact Density Heatmap", x = "Longitude", y = "Latitude")
plot(mapa_de_calor)

7#
artefactos_totales <- sum(archaeology_data$num_artifacts)
print(artefactos_totales)

8#

mediana_artefactos_yacimiento <- median(archaeology_data$num_artifacts)
print(mediana_artefactos_yacimiento)

9#

desviacion_normal_artefactos <- sd(archaeology_data$num_artifacts)
print(desviacion_normal_artefactos)
