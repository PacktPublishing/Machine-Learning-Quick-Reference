library(foreign)
dataset = read.spss("World95.sav", to.data.frame=TRUE)


library(Amelia)

myvars <- names(dataset) %in% c("COUNTRY", "RELIGION", "REGION","CLIMATE") 
newdata <- dataset[!myvars]

## imputation ##

impute.out <- amelia(newdata, m=4)