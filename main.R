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

# select cols from data frame
df = data.frame(DF_DISCRIM_A2011[list_col])
names(df)

# get Fact values per selected col
getFact <- function(list_col) {
  getFact_list <- c()
  for (name in list_col) {
    getFact_list = append(getFact_list, paste(name,'_Fact',sep=''))
  }
  return(getFact_list)
}
fact_list = getFact(list_col)

strata_names <- c('f_NO_1', 'f_NO_2', 'f_NO_3', 'f_NO_4', 'f_NO_5',
                  'f_NE_1', 'f_NE_2', 'f_NE_3', 'f_NE_4', 'f_NE_5',
                  'f_C_1', 'f_C_2', 'f_C_3', 'f_C_4', 'f_C_5',
                  'f_SI_1', 'f_SI_2', 'f_SI_3', 'f_SI_4', 'f_SI_5',
                  
                  'm_NO_1', 'm_NO_2', 'm_NO_3', 'm_NO_4', 'm_NO_5',
                  'm_NE_1', 'm_NE_2', 'm_NE_3', 'm_NE_4', 'm_NE_5',
                  'm_C_1', 'm_C_2', 'm_C_3', 'm_C_4', 'm_C_5',
                  'm_SI_1', 'm_SI_2', 'm_SI_3', 'm_SI_4', 'm_SI_5'
)

# create list of dataframes named after strata_names values
strata_df_list <- c()
strata_df_list <- setNames(replicate(40, data.frame(col.names = names(df))), strata_names)

# create strata - 40 total
c <- 1 # counter
for (s in 1:2) {
  for (z in 1:4) {
    for (a in 1:5) {
      # subset original data frame based on 3 attributes
      strata_df_list[c] <- lapply(50, function(x){subset(df, df$SESSO==s & df$RIP==z & df$ETA==a)})
      c <- c + 1 # increment counter
    }
  }
}

# sampling - 600 records
sample <- data.frame()
for (i in 1:40) {
  tempdf <- as.data.frame(strata_df_list[i]) # get df from df list
  colnames(tempdf) <- list_col # rename col to match final_sample
  row_index <- c(sample(nrow(tempdf), 15)) # simple random sampling of 15 rows
  tempdf <- tempdf[row_index, ] # get the selected records from temporary df
  sample <- rbind(sample, tempdf) # add to sample 
}

# factoring script
source("factoring.R")