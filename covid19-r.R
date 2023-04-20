# install libraries
install.packages("readr")
install.packages("tibble")
install.packages("dplyr")
install.packages("jtools")
install.packages("huxtable")
install.packages("broom")
# import libraries
library(readr)
library(tibble)
library(dplyr)
library(jtools)
library(huxtable)
library(broom)
#read data
data <- read.csv("owid-covid-data.csv")
#column names
colnames(data)
#define variables from columns
handwash <- data$handwashing_facilities
hdi <- data$human_development_index
pop_den <- data$population_density
fullvax <- data$people_fully_vaccinated
le <- data$life_expectancy
diabetes <- data$diabetes_prevalence
cardiovasc <- data$cardiovasc_death_rate
morethan65 <- data$aged_65_older
pop <- data$population
y <- data$total_deaths
#single variable regressions
reg_1 <- lm(y~hdi)
print(summary(reg_1))
reg_2 <- lm(y~pop_den)
print(summary(reg_2))
reg_3 <- lm(y~fullvax)
print(summary(reg_3))
reg_4 <- lm(y~diabetes)
print(summary(reg_5))
reg_5 <- lm(y~cardiovasc)
print(summary(reg_6))
reg_6 <- lm(y~morethan65)
print(summary(reg_7))
#export regression result
export_summs(reg_1, reg_2, reg_3, reg_4, reg_5, reg_6, scale = TRUE,to.file = "html", file.name = "result.html")
#multiple regressions
reg_7 <- lm(y~hdi+diabetes+cardiovasc+morethan65)
print(summary(reg_7))
reg_8 <- lm(y~hdi+pop_den+le)
print(summary(reg_8))
reg_9 <- lm(y~hdi+pop_den+le+pop+fullvax)
print(summary(reg_9))
#export regression result
export_summs(reg_7,reg_8,reg_9, scale = TRUE,to.file = "html", file.name =  "result2.html")


