#lat1
df_Nadin = read.delim("clipboard")
head(df_Nadin)

model <- aov(korosi~metode, data=df_Nadin)
summary(model)

tukey.test <- TukeyHSD(model)
tukey.test

#lat2
df_Nadin=PlantGrowth
View(df_Nadin)

model <- aov(weight~group, data=df_Nadin)
summary(model)

tukey.test <- TukeyHSD(model)
tukey.test