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


