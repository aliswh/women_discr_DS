# libraries import
library(rstudioapi)
# set wd to source file directory
setwd(dirname(getActiveDocumentContext()$path))

#load sample
load("sample.RData")

# factoring script
source("factoring.R")

### do analysis

### visualize data
colors <- c("lightgreen", "lightyellow")

barplot(table(sample$SESSO, sample$CUCINA),
     names.arg = c(levels(CUCINA_Fact)),
     col = colors,
     main=attr(sample, 'label')[41],
     sub='Sottotitolo: possiamo dire che blabla',
     xlab='Risposte',
     ylab='Quanti intervistati'
)

legend("topright",
       legend = c(levels(SESSO_Fact)),
       fill = colors,
       )

#
#attr(sample, 'label')
