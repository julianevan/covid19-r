# covid19-r
A Data Analytics Project on Covid-19 dataset using R 

Hi! Welcome to this repository! This is a Data Analytics Project on Covid-19 dataset from [Our World in Data](https://ourworldindata.org/coronavirus), which is available in the repository too.
I used R and RStudio for this project. Feel free to download the repo and play with the R code.

# Overview
This project uses regression to check causality between dependent variables such as life expectancy, diabetes, cardiovascular deaths and total deaths caused by COVID-19.

# Regression Result Analysis
![Result 1](https://github.com/julianevan/covid19-r/blob/main/result.PNG)

1. HDI has a positive coefficient. It might be caused by other ommited variables that countries with higher HDI have, if compared to countries with lower HDI.
2. Pop density has a negative coefficient. This might imply that a place where the population is dense does not necessarily lead to more deaths, things such as easier access to healthcare etc. might contribute to the negative coefficient.
3. Cardiovascular death has a negative coefficient. This might be caused by other ommited variables.

![Result 2](https://github.com/julianevan/covid19-r/blob/main/result2.PNG)

4. In model 1, HDI has a positive coefficient, and Cardiovascular death has a negative coefficient. Refer to point 1 and 3.
5. In model 2, life expectancy has a negative coefficient which is expected.
