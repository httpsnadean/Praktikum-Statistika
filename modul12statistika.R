#lat1
df_Nadin=read.delim("clipboard")
head(df_Nadin)
model_reg=lm(df_Nadin$Y~df_Nadin$X)
summary(model_reg)

#lat2
df_Nadin=read.delim('clipboard')
df_Nadin$brick_dummy <- ifelse(df_Nadin$Brick == "Yes", 1,0)
df_Nadin$N_dummy1 <- ifelse(df_Nadin$Neighborhood == "West", 1,0)
df_Nadin$N_dummy2 <- ifelse(df_Nadin$Neighborhood == "North", 1,0)
model=lm(df_Nadin$Price~df_Nadin$SqFt+df_Nadin$Bedrooms+df_Nadin$Bathrooms+df_Nadin$brick_dummy+df_Nadin$N_dummy1+df_Nadin$N_dummy2)
summary(model)

by(df_Nadin$Price, df_Nadin$Neighborhood, mean)
by(df_Nadin$Price, df_Nadin$Brick, mean)