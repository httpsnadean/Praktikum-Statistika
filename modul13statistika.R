#lat1
dataku_Nadin = read.delim("clipboard")
View(dataku_Nadin)
wilcox.test(dataku_Nadin$Sebelum,dataku_Nadin$Sesudah,paired=TRUE)

#lat2
df_Nadin=read.delim("clipboard")
# independent 2-group Mann-Whitney U Test
wilcox.test(df_Nadin$obat~df_Nadin$grup)
# where y is numeric and A is A binary factor
head(df_Nadin)
rank(df_Nadin$obat)

#lat3.1
dataku_Nadin = read.delim("clipboard")
View(dataku_Nadin)
wilcox.test(dataku_Nadin$Ganjil,dataku_Nadin$Genap, paired=TRUE)
#lat3.2
df_Nadin = read.delim("clipboard")
wilcox.test(df_Nadin$caffeine, df_Nadin$placebo)
#independent 2-group Mann-Whitney U Test
head(df_Nadin)
rank(df_Nadin$placebo)