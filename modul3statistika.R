data_Nadin = read.csv("C:/Users/dc/Documents/prakstatisdatanama.csv", sep = ",")
View(data_Nadin)

Nadin <- data_Nadin[data_Nadin$TinggiBadan==165,]
View(Nadin)

data_Nadin$TinggiBadan <- ifelse(data_Nadin$TinggiBadan > 160, c("Tinggi"), c("Pendek"))
View(Nadin)

data_Nadin$Jurusan <- c("Infor21")
data_Nadin$Fakultas <- c("FTI")
View(data_Nadin)

data_Nadin$Fakultas <- NULL
View(data_Nadin)

data_Nadin.kolom1dan2 <- data_Nadin[,1:2]
View(data_Nadin.kolom1dan2)
data_Nadin.kolom3dan4 <- data_Nadin[,3:4]
View(data_Nadin.kolom3dan4)
data_Nadin.kolom1sd4 <- cbind(data_Nadin.kolom1dan2, data_Nadin.kolom3dan4)
View(data_Nadin.kolom1sd4)

data_Nadin.baris1sd5 <- data_Nadin[1:5,]
View(data_Nadin.baris1sd5)
data_Nadin.baris25sd30 <- data_Nadin[25:30,]
View(data_Nadin.baris25sd30)
data_Nadin.baris1sd5dan25sd30 <- rbind(data_Nadin.baris1sd5, data_Nadin.baris25sd30)
View(data_Nadin.baris1sd5dan25sd30)

data_Nadin.sort <- data_Nadin[order(data_Nadin$WaktuPerjalanan),]
View(data_Nadin.sort)