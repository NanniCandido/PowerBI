setwd("C:/Users/Nani/OneDrive/Documents/DataScienceAcademy/PowerBI/Cap15")
getwd()

install.packages("Amelia")
install.packages("caret")
install.packages("ggplot2")
install.packages("dplyr")
install.packages("reshape")
install.packages("randomForest")
install.packages("e1071")

library(Amelia)
library(caret)
library(ggplot2)
library(dplyr)
library(reshape)
library(randomForest)
library(e1071)

dados_clientes <- read.csv("dataset.csv")
View(dados_clientes)
str(dados_clientes)
summary(dados_clientes)

dados_clientes$ID <- NULL
colnames(dados_clientes)[24] <- "Inadimplente"
colnames(dados_clientes)[2] <- "Genero"
colnames(dados_clientes)[3] <- "Escolaridade"
colnames(dados_clientes)[4] <- "Estado_Civil"
colnames(dados_clientes)[5] <- "Idade"
colnames(dados_clientes)

missmap(dados_clientes, main = "Valores Missing Observados")
dados.clientes <- na.omit(dados_clientes)



