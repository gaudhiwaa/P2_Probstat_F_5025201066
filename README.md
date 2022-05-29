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

2. A Apakah Anda setuju dengan klaim tersebut?

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

Kesimpulannya adalah bahwa mobil dikemudikan rata-rata lebih dari 20.000 km/tahun
