# libraries import
library(rstudioapi)
# set wd to source file directory
setwd(dirname(getActiveDocumentContext()$path))
# load entire dataframe
source("PGM_2011_IT_DELIMITED.r")

# select list of cols
list_col = c("RIP","PADRENATO","MADRENATO","CARICOLAV","UOMOPRIMA",
             "UOMOSOLDI","UOMODECIDE","NODONNASUP","FAMOSTACOLO",
             "PIUDONNE","DIVISIONEFAM","INADATTI","PIUCURA","D_DISCRIM",
             "D_DISCRIM5AA","RINUNCLAV","RINUNCCAMBIO","RINUNINC",
             
             "S_DISCRIM","S_SESSO","S_ASPET","C_DISCRIM","C_RETRINF",
             "C_GRAVID","C_SESSO","C_ASPET","L_DISCRIM","L_LICENZ",
             "L_LICGRAV","L_QDLICGRAV","L_LICENZ2","L_LICGRAV2",
             "L_QDLICGRAV2","L_CAPAC2","L_RETRINF2","L_SESSO","L_ASPET",
             
             "UMILIATA","MIN","RELAZOUT","CUCINA","PULIZIA",
             "CURAFIGLI","DIVISLAV","PIUGUAD","S_PERCOSS",
             "SESSO","ETA","ISTR","CONDIZ"
)

# select cols from dataframe
df = data.frame(DF_DISCRIM_A2011[list_col])

# get Fact values per selected col
getFact <- function(list_col) {
  getFact_list <- c()
  for (name in list_col) {
    getFact_list = append(getFact_list, paste(name,'_Fact',sep=''))
  }
  return(getFact_list)
}
fact_list = getFact(list_col)

t <- table(RIP_Fact)
pie(table(RIP_Fact))
prop.table(t)*100

table(ETA_Fact)
df$SESSO

makeStrata <- function(i, s, z, a) { # sex, zone, age
  strata = data.frame()
  if ((df$SESSO[i] == s) & (df$RIP[i] == z) & (df$ETA[i] == a)) {
    strata <- rbind(strata, df[i,])
  }
  return(strata)
}

strata_names <- c('f_NO_1', 'f_NO_2', 'f_NO_3', 'f_NO_4', 'f_NO_5',
                  'f_NE_1', 'f_NE_2', 'f_NE_3', 'f_NE_4', 'f_NE_5',
                  'f_C_1', 'f_C_2', 'f_C_3', 'f_C_4', 'f_C_5',
                  'f_SI_1', 'f_SI_2', 'f_SI_3', 'f_SI_4', 'f_SI_5',
                  
                  'm_NO_1', 'm_NO_2', 'm_NO_3', 'm_NO_4', 'm_NO_5',
                  'm_NE_1', 'm_NE_2', 'm_NE_3', 'm_NE_4', 'm_NE_5',
                  'm_C_1', 'm_C_2', 'm_C_3', 'm_C_4', 'm_C_5',
                  'm_SI_1', 'm_SI_2', 'm_SI_3', 'm_SI_4', 'm_SI_5'
)

f_NO_1 <- data.frame()
f_NO_2 <- data.frame()

for (i in 1:length(df$RIP)) {
  f_NO_1 <- rbind(f_NO_1, makeStrata(i, 2, 1, 1))
  f_NO_2 <- rbind(f_NO_2, makeStrata(i, 2, 1, 2))
}

finalsample <- f_NO_1[sample(nrow(f_NO_1), 15),]
source("factoring.R")
