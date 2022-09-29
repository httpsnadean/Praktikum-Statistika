library(RMySQL)
con = dbConnect(MySQL(), user = 'root', password = '', dbname = 'ps2[nadin]', host = 'localhost')
dbListTables(con) 
myQuery <- "select * from prak2statistika;"
df <- dbGetQuery(con, myQuery)

library(dplyr)
df <- filter(df,JenisKelamin=="P")
print(df)