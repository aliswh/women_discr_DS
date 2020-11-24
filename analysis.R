# libraries import
library(rstudioapi)
# set wd to source file directory
setwd(dirname(getActiveDocumentContext()$path))

#load sample
load("sample.RData")

### do analysis

### visualize data
pie(table(sample$ETA))
