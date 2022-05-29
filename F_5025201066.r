# 1
# 1. A.

# Data sebelum melakukan penelitian kadar saturasi oksigen pada manusia
beforeResearch <- c(78, 75, 67, 77, 70, 72, 28, 74, 77)

# Data setelah melakukan penelitian kadar saturasi oksigen pada manusia
afterResearch <- c(100, 95, 70, 90, 90, 90, 89, 90, 100)

# Standar devisiasi sebelum aktivitas melakukan penelitian 
sd_beforeResearch <- sd(beforeResearch)
sd_beforeResearch

# Standar devisiasi setelah aktivitas melakukan penelitian 
sd_afterResearch <- sd(afterResearch)
sd_afterResearch

# 1. B.

# Mencari nilai t (p-value)
t.test(beforeResearch, afterResearch, alternative = "greater", var.equal = FALSE)

# 1. C.

# Komparasikan kedua variabel.
var.test(beforeResearch, afterResearch)

# Untuk melihat pengaruh jika tingkat signifikasi 5% dan tidak ada pengaruh yang signifikan secara statistik
t.test(beforeResearch, afterResearch, var.equal = TRUE)

# 2

# 2. A.

# README

# 2. B. 
# Penjelasan output yang dihasilkan
install.packages("BSDA")
library(BSDA)
tsum.test(mean.x=23500, sd(3900), n.x=100)

# 2. C

# README

# 3
# 3. A.

# README

# 3. B

# Menghitung sampel statistik
tsum.test(mean.x=3.64, s.x = 1.67, n.x = 19, 
          mean.y =2.79 , s.y = 1.32, n.y = 27, 
          alternative = "greater", var.equal = TRUE)

# 3. C

# Uji Statistik (df =2)
install.packages("mosaic")
library(mosaic)
plotDist(dist='t', df=2, col="blue")

# 3. D

# Nilai Kritikal
qchisq(p = 0.05, df = 2, lower.tail=FALSE)

# 3. E.

# README

# 3. F.

# README

# 4
# 4. A.

myFile  <- read.table(url("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt"))
dim(myFile)
head(myFile)
attach(myFile)

myFile$V1 <- as.factor(myFile$V1)
myFile$V1 = factor(myFile$V1,labels = c("Kucing Oren","Kucing Hitam","Kucing Putih","Kucing Oren"))

class(myFile$V1)

group1 <- subset(myFile, V1=="Kucing Oren")
group2 <- subset(myFile, V1=="Kucing Hitam")
group3 <- subset(myFile, V1=="Kucing Putih")

# 4. B.

bartlett.test(Length~V1, data=dataoneway)

# 4. C.
qqnorm(group1$Length)
qqline(group1$Length)

# 4. D.

# README

# 4. E.

model1 <- lm(Length~Group, data=myFile)

anova(model1)

TukeyHSD(aov(model1))

# 4. F.

library(ggplot2)
ggplot(dataoneway, aes(x = Group, y = Length)) + geom_boxplot(fill = "grey80", colour = "black") + 
  scale_x_discrete() + xlab("Treatment Group") +  ylab("Length (cm)")

