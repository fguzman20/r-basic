library(openxlsx)
library(ggthemes)
library(ggplot2)
library(DataExplorer)
datos <- read.xlsx("C:/Users/USER/Documents/data2.xlsx")
datos
str(datos) ##conociendo los datos.
head(datos) ##muestra
ts.plot(datos$MONETARIO) ##grafico

##ploteo con data explorer
plot_missing(
  datos,
  group = list(Good = 0.05, OK = 0.4, Bad = 0.8, Remove = 1),
  missing_only = TRUE,
  geom_label_args = list(),
  title = "ANALISIS DE VARIABLES",
  ggtheme = theme_gray(),
  theme_config = list(legend.position = c("bottom"))
)
##editar datos
fix(datos)

#correlaciones
plot_correlation(datos, type = "continuous")


DataExplorer::plot_str(datos)
DataExplorer::split_columns(datos)



