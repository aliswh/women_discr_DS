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

listone <- c("RIP","PADRENATO","MADRENATO",
             "CARICOLAV","UOMOPRIMA")

# select cols from dataframe
df = data.frame(DF_DISCRIM_A2011[list_col])

