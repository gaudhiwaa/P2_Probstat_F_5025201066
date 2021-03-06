# P2_Probstat_F_5025201066

- Nama  : Gaudhiwaa Hendrasto
- Kelas : Probstat F
- NRP   : 5025201066

# Penjelasan 

1. Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat kembali kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 responden mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas 𝐴.

<p align="center">
<img width="231" alt="Screen Shot 2022-05-29 at 17 45 49" src="https://user-images.githubusercontent.com/88303669/170864060-41859247-56ce-4ed9-aa37-5db3fd46a1ee.png">
</p>

Berdasarkan data pada tabel diatas, diketahui kadar saturasi oksigen dari responden ke-3 ketika belum melakukan aktivitas 𝐴 sebanyak 67, dan setelah melakukan aktivitas 𝐴 sebanyak 70.

1. A. Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel diatas.

Masukan data pada tabel ke masing-masing variabel.
```
# Data sebelum melakukan penelitian kadar saturasi oksigen pada manusia
beforeResearch <- c(78, 75, 67, 77, 70, 72, 28, 74, 77)

# Data setelah melakukan penelitian kadar saturasi oksigen pada manusia
afterResearch <- c(100, 95, 70, 90, 90, 90, 89, 90, 100)
```
Kemudian, cari standar deviasinya.
```
# Standar devisiasi sebelum aktivitas melakukan penelitian 
sd_beforeResearch <- sd(beforeResearch)
sd_beforeResearch

# Standar devisiasi setelah aktivitas melakukan penelitian 
sd_afterResearch <- sd(afterResearch)
sd_afterResearch
```
Hasilnya :

<img width="318" alt="Screen Shot 2022-05-29 at 18 06 25" src="https://user-images.githubusercontent.com/88303669/170864921-a3aaedb4-b924-4ff2-866e-9875503bc32f.png">
<img width="305" alt="Screen Shot 2022-05-29 at 18 07 10" src="https://user-images.githubusercontent.com/88303669/170864940-5666943b-46bd-4289-b0a7-e8b01a5662f9.png">

1. B. Carilah nilai t (p-value)

Mencari nilai t (p-value) bisa menggunakan fungsi t.test sebagai berikut.
```
t.test(beforeResearch, afterResearch, alternative = "greater", var.equal = FALSE)
```
Hasilnya :

<img width="629" alt="Screen Shot 2022-05-29 at 18 15 27" src="https://user-images.githubusercontent.com/88303669/170865176-a1b5466c-b8ee-40d0-933f-92e1a6ed5282.png">

1. C. Tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen, sebelum dan sesudah melakukan aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”

Komparasikan kedua variabel.

```
var.test(beforeResearch, afterResearch)
```

<img width="492" alt="Screen Shot 2022-05-29 at 18 23 50" src="https://user-images.githubusercontent.com/88303669/170865487-5d226953-8001-4658-9091-a2727ab17a20.png">

Untuk melihat pengaruh jika tingkat signifikasi 5% dan tidak ada pengaruh yang signifikan secara statistik, dilakukan sebagai berikut.

```
t.test(beforeResearch, afterResearch, var.equal = TRUE)
```

<img width="495" alt="Screen Shot 2022-05-29 at 18 25 01" src="https://user-images.githubusercontent.com/88303669/170865538-8805e2f4-763d-4bfd-aab8-3a9be56a7402.png">


Mean dan convidence sama dengan nomor 1.B, yang berbeda adalah p-value dan df. Sehingga tidak memiliki pengaruh yang signifikan secara statistik.

2. Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun. Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata 23.500 kilometer dan standar deviasi 3900 kilometer. (Kerjakan menggunakan 2 library seperti referensi pada modul).

2.A. Apakah Anda setuju dengan klaim tersebut?

Setuju

2. B. Jelaskan maksud dari output yang dihasilkan!
```
install.packages("BSDA")
library(BSDA)
tsum.test(mean.x=23500, sd(3900), n.x=100)
```

<img width="383" alt="Screen Shot 2022-05-29 at 18 36 17" src="https://user-images.githubusercontent.com/88303669/170865907-14066b8d-1d3c-42b2-8008-fff24968c1c8.png">

Diketahui n = 100, Rata-Rata (X̄) = 23500, dan standar deviasi(σ) = 3900 Maka null hipotesis adalah :
```
H0 : μ = 20000
```
Alternatif hipotesisnya adalah :
```
H1 : μ > 20000
```

2. C. Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!

![image](https://user-images.githubusercontent.com/88303669/170866285-c1a6a898-e066-40e9-9e61-64d9d34d336a.png)

![image-2](https://user-images.githubusercontent.com/88303669/170866284-cbb402ed-f957-4b25-ac3a-8ef25538dafe.png)

![image-3](https://user-images.githubusercontent.com/88303669/170866279-23422b87-1105-4bf3-93ce-18666912da9d.png)

Kesimpulannya adalah bahwa mobil dikemudikan rata-rata lebih dari 20.000 km/tahun.

3. Diketahui perusahaan memiliki seorang data analyst ingin memecahkan permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya didapatkanlah data berikut dari perusahaan saham tersebut. 

<p align="center">
<img width="476" alt="Screen Shot 2022-05-29 at 18 58 07" src="https://user-images.githubusercontent.com/88303669/170866866-87a41cee-4868-4e6e-a187-949d770aca24.png">
</p>

Dari data diatas berilah keputusan serta kesimpulan yang didapatkan dari hasil diatas. Asumsikan nilai variancenya sama, apakah ada perbedaan pada rata-ratanya (α= 0.05)? Buatlah :

3. A. H0 dan H1

Perhitungan H0.

![170837176-254c2846-c1b7-47c0-aa9f-c3b2e5db149a-2](https://user-images.githubusercontent.com/88303669/170867133-003cba38-d7c1-4d07-8f02-519ad3076f11.png)

Perhitungan H1.

![170837297-542b8a9e-309b-41be-92c5-880e284beef4](https://user-images.githubusercontent.com/88303669/170867137-acb52e0d-2cdd-4c87-8a4c-a5127ee58793.png)

3. B. Hitung sampel statistik.

```
tsum.test(mean.x=3.64, s.x = 1.67, n.x = 19, mean.y =2.79 , s.y = 1.32, n.y = 27, alternative = "greater", var.equal = TRUE)
```
<img width="497" alt="Screen Shot 2022-05-29 at 19 13 48" src="https://user-images.githubusercontent.com/88303669/170867565-14170ffb-4f98-4e50-a663-82b7bfcf3800.png">

3. C. Lakukan Uji Statistik (df=2).
```
install.packages("mosaic")
library(mosaic)
plotDist(dist='t', df=2, col="blue")
```

![170845594-721682ce-705c-4423-b6e2-5d3ad48e10cf](https://user-images.githubusercontent.com/88303669/170868008-1a0bb077-693e-463b-9ebd-e27f2629724f.png)

3. D. Nilai kritikal.

Adapun untuk mendapatkan nilai kritikal bisa menggunakan qchisq dengan df=2 sesuai soal sebelumnya.
```
qchisq(p = 0.05, df = 2, lower.tail=FALSE)
```
<img width="337" alt="Screen Shot 2022-05-29 at 19 34 17" src="https://user-images.githubusercontent.com/88303669/170868603-7d0f06ee-6bf0-47f1-8b54-d5db306bc948.png">

3. E. Keputusan.

Teori keputusan adalah teori formal pengambilan keputusan di bawah ketidakpastian. Aksinya adalah : ({a}_{a∈A}) Kemungkinan konsekuensi : ({c}_{c∈C}) (tergantung pada keadaan dan tindakan) Maka keputusan dapat dibuat dengan t.test

3. F. Kesimpulan.

Kesimpulan yang didapatkan yaitu perbedaan rata-rata yang terjadi tidak ada jika dilihat dari uji statistik dan akan ada tetapi tidak signifikan jika dipengaruhi nilai kritikal.

4 Seorang Peneliti sedang meneliti spesies dari kucing di ITS . Dalam penelitiannya ia mengumpulkan data tiga spesies kucing yaitu kucing oren, kucing hitam dan kucing putih dengan panjangnya masing-masing. Jika : diketahui dataset https://intip.in/datasetprobstat1 H0 : Tidak ada perbedaan panjang antara ketiga spesies atau rata-rata panjangnya sama. Maka Kerjakan atau Carilah:

4. A. Buatlah masing masing jenis spesies menjadi 3 subjek "Grup" (grup 1,grup 2,grup 3). Lalu Gambarkan plot kuantil normal untuk setiap kelompok dan lihat apakah ada outlier utama dalam homogenitas varians. 

Langkah pertama mengambil data dari link yang telah disediakan.

```
myFile  <- read.table(url("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt")) 
dim(myFile)
head(myFile)
```
Selanjutnya membuat myFile menjadi group.

```
myFile$Group <- as.factor(myFile$Group)
myFile$Group = factor(myFile$Group,labels = c("Kucing Oren","Kucing Hitam","Kucing Putih"))
```
Setelah itu, dicek apakah dia menyimpan nilai di groupnya.
```
class(myFile$Group)
```
Lalu bagi tiap value menjadi 3 bagian ke 3 grup
```
group1 <- subset(myFile, Group=="Kucing Oren")
group2 <- subset(myFile, Group=="Kucing Hitam")
group3 <- subset(myFile, Group=="Kucing Putih")
```

<img width="753" alt="Screen Shot 2022-05-29 at 21 04 02" src="https://user-images.githubusercontent.com/88303669/170873137-7cc643ed-dfce-4a10-932b-f24af583cc2b.png">

4. B. Carilah atau periksalah Homogeneity of variances-nya, Berapa nilai p yang didapatkan? , Apa hipotesis dan kesimpulan yang dapat diambil ?

Mencari Homogeneity of variances bisa menggunakan command sebagai berikut.

```
bartlett.test(Length~Group, data=dataoneway)
```

Hasilnya :

<img width="608" alt="170871015-41c0838b-197e-4cf9-ad70-4b9fecdb8414" src="https://user-images.githubusercontent.com/88303669/170873283-00db153c-c1b7-4be2-871b-fed7dfe6f5d3.png">

Setelah di jalankan maka nilai p-value = 0.8054. Kesimpulan yang didapatkan yaitu Bartlett's K-squared memiliki nilai sebesar 0.43292 dan df bernilai 2.

4. C. Untuk uji ANOVA (satu arah), buatlah model linier dengan Panjang versus Grup dan beri nama model tersebut model 1.
```
qqnorm(group1$Length)
qqline(group1$Length)
```
Hasilnya :

![170848819-3b70668f-ba55-4d57-b297-a14cb7d7218a](https://user-images.githubusercontent.com/88303669/170871951-79b46316-ff3c-411a-adc4-75fca7108d0e.png)

4. D. Dari Hasil Poin C, Berapakah nilai-p ? , Apa yang dapat Anda simpulkan
dari H0?

Didapatkan p-value yaitu = 0.8054. Maka dapat disimpulkan bahwa H0 ditolak.

4. E. Verifikasilah jawaban model 1 dengan Post-hoc test Tukey HSD, dari nilai p
yang didapatkan apakah satu jenis kucing lebih panjang dari yang lain? Jelaskan.

Langkah pertama adalah menggunakan command ANOVA.

```
model1 <- lm(Length~Group, data=myFile)
```
Selanjutnya menggunakan command.
```
anova(model1)
```
Lalu menggunakan model Post-hoc Tukey HSD sebagai berikut
```
TukeyHSD(aov(model1))
```
Hasilnya :

<img width="615" alt="170871161-3a9a1a94-1302-4eed-a7ca-9bfe3c4eee24-2" src="https://user-images.githubusercontent.com/88303669/170873365-6afaf0cb-34b0-48ae-82f3-c79b0efe7682.png">

4. F. Visualisasikan data dengan ggplot2.

library(ggplot2)
ggplot(dataoneway, aes(x = Group, y = Length)) + geom_boxplot(fill = "grey80", colour = "black") + scale_x_discrete() + xlab("Treatment Group") +  ylab("Length (cm)")

<img width="1210" alt="170870866-4728bf66-3c96-4618-b24e-1c0fbcfa18df" src="https://user-images.githubusercontent.com/88303669/170873695-45444bde-465c-48c4-a000-346176b0cfa6.png">

5. Data yang digunakan merupakan hasil eksperimen yang dilakukan untuk mengetahui pengaruh suhu operasi (100˚C, 125˚C dan 150˚C) dan tiga jenis kaca pelat muka (A, B dan C) pada keluaran cahaya tabung osiloskop. Percobaan dilakukan sebanyak 27 kali dan didapat data sebagai berikut: Data Hasil Eksperimen. Dengan data tersebut :


5.A. Buatlah plot sederhana untuk visualisasi data.

Run semua library yang diperlukan.

```
install.packages("multcompView")
library(readr)
library(ggplot2)
library(multcompView)
library(dplyr)
```

Selanjutnya membaca file GTL.csv dari documents.
```
GTL <- read_csv("GTL.csv")
head(GTL)
```
![image](https://user-images.githubusercontent.com/70510279/170851339-6020c531-8d07-4a20-a9ab-4db04a1110e0.png)

Lakukan observasi pada data.
```
str(GTL)
```
![image](https://user-images.githubusercontent.com/70510279/170851373-4512e70e-81ed-4a12-bf5e-5408d4403678.png)

Selanjutnya lakukan viasualisasi menggunakan simple plot yaitu sebagai berikut
```
qplot(x = Temp, y = Light, geom = "point", data = GTL) +
  facet_grid(.~Glass, labeller = label_both)
```
![image](https://user-images.githubusercontent.com/70510279/170851403-3b91fe4f-ab41-4b3e-8aca-066a27607971.png)

5. B.
Lakukan uji ANOVA dua arah.
Langkah pertama adalah membuat variabel as factor sebagai ANOVA.
```
GTL$Glass <- as.factor(GTL$Glass)
GTL$Temp_Factor <- as.factor(GTL$Temp)
str(GTL)
```
![image](https://user-images.githubusercontent.com/70510279/170851438-509ae870-a9a1-420e-adb9-3239f6a6dfb6.png)

Selanjutnya melakukan analisis of variance (aov) yaitu sebagai berikut.
```
anova <- aov(Light ~ Glass*Temp_Factor, data = GTL)
summary(anova)
```
![image](https://user-images.githubusercontent.com/70510279/170851507-b318c577-8c71-4a3c-b391-1c406e364abb.png)

5. C.
Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi).

Menggunakan `group_by` lalu melakukan `summarise` sesuai mean dan standar deviasi yang berlaku sehingga scriptnya adalah sebagai berikut.
```
data_summary <- group_by(GTL, Glass, Temp) %>%
  summarise(mean=mean(Light), sd=sd(Light)) %>%
  arrange(desc(mean))
print(data_summary)
```
![image](https://user-images.githubusercontent.com/70510279/170851578-fee77749-6fff-4abf-ad36-62ef2ec84c3d.png)

5. D.
Lakukan uji Tukey.

Menggunakan fungsi `TukeyHSD` sebagai berikut.
```
tukey <- TukeyHSD(anova)
print(tukey)
```
![image](https://user-images.githubusercontent.com/70510279/170851658-f097be04-5017-404e-99b6-0ebdebb284d9.png)
![image](https://user-images.githubusercontent.com/70510279/170851669-260742aa-75b0-47e2-9d8a-dabf318b5082.png)

5. E.
Gunakan compact letter display untuk menunjukkan perbedaan signifikan antara uji Anova dan uji Tukey.

Awalnya yaitu membuat compact letter display sebagai berikut.
```
tukey.cld <- multcompLetters4(anova, tukey)
print(tukey.cld)
```
![image](https://user-images.githubusercontent.com/70510279/170851727-729875df-5aaf-4897-b97f-08b91127347e.png)

Tambahkan compact letter display tersebut ke tabel dengan means(rata-rata) dan sd.

```
cld <- as.data.frame.list(tukey.cld$`Glass:Temp_Factor`)
data_summary$Tukey <- cld$Letters
print(data_summary)
```
![image](https://user-images.githubusercontent.com/70510279/170851749-d1e4fd97-1020-4f52-bb1a-7d020a508093.png)
