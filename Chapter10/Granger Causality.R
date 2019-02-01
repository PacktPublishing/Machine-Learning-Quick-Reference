#install.packages("lmtest")
library(lmtest)

data= read.csv("AirQualityUCI.csv")
attach(data)
grangertest(NOx.GT. ~ NO2.GT., order = 3, data = data)

