install.packages("readr")
install.packages("tibble")
install.packages("dplyr")
library(readr)
library(tibble)
library(dplyr)
data <- read.csv("owid-covid-data.csv")
colnames(data)
hdi <- data$human_development_index
hdi_sq <- hdi^2
pop_den <- data$population_density
fullvax <- data$people_fully_vaccinated
le <- data$life_expectancy
y <- data$total_deaths
pop <- data$population
reg_1 <- lm(y~hdi)
print(summary(reg_1))
reg_2 <- lm(y~pop_den)
print(summary(reg_2))
reg_3 <- lm(y~hdi+pop_den)
print(summary(reg_3))
reg_4 <- lm(y~hdi_sq)
print(summary(reg_4))
reg_5 <- lm(y~hdi_sq+pop_den)
print(summary(reg_5))
reg_6 <- lm(y~le)
print(summary(reg_6))
reg_7 <- lm(y~hdi_sq+pop_den+le)
print(summary(reg_7))
reg_8 <- lm(y~pop)
print(summary(reg_8))
reg_9 <- lm(y~hdi_sq+pop_den+le+pop)
print(summary(reg_9))
reg_10 <- lm(y~hdi_sq+pop_den+le+pop+fullvax)
print(summary(reg_10))
