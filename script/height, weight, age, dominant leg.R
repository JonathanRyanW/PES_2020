"Memasukan data kedalam variable data"
data <- read.csv("./data/pes_player_2020.csv")

"Mencari 5 negara dengan jumlah pemain terbanyak"
sort(table(data$nationality), decreasing = TRUE)[1:5]

"jumlah data yang kita ambil"
sum(sort(table(data$nationality), decreasing = TRUE)[1:5])

"Membuat data untuk 5 negara tersebut"
data_top_5 <- filter(data, nationality == "BRAZIL" | nationality == "SPAIN" |nationality == "FRANCE" | nationality == "ARGENTINA" | nationality == "ITALY")

"Mencari rata2 dari tinggi, berat, dan umur berdasarkan negara"
tapply(data_top_5$height, data_top_5$nationality, mean)
tapply(data_top_5$weight, data_top_5$nationality, mean)
tapply(data_top_5$age, data_top_5$nationality, mean)

"Membuat file png untuk masing2 data yang tadi kita dapatkan"
png(filename = "age top 5 (base).png")
png(filename = "height top 5 (base).png")
png(filename = "weight top 5 (base).png")

"Membuat barplot untuk masing2 data"
barplot(tapply(data_top_5$age, data_top_5$nationality, mean), ylab = "Umur (tahun)", main = "Rata-rata Umur 5 Negara Teratas")
barplot(tapply(data_top_5$height, data_top_5$nationality, mean), ylab = "Tinggi Badan (cm)", main = "Rata-rata Tinggi Badan 5 Negara Teratas", ylim = c(0,200))
barplot(tapply(data_top_5$weight, data_top_5$nationality, mean), ylab = "Berat Badan (kg)", main = "Rata-rata Berat Badan 5 Negara Teratas", ylim = c(0,80))

"Menyimpan barplot ke dalam masing2 file png yang sesuai"
dev.off()
dev.off()
dev.off()

"Mengubah data kolom foot menjadi factor"
data_top_5$foot <- as.factor(data_top_5$foot)

"Membuat file png untuk menyimpan data jumlah pemain berdasarkan kaki dominan"
png(filename = "dominant leg (base).png")

"Membuat barplot jumlah pemain berdasarkan kaki dominan"
barplot(table(data_top_5$foot), ylab = "Jumlah", ylim = c(0,4000), main = "Jumlah Pemain 5 Negara Teratas Berdasarkan Kaki Dominan")

"Menyimpan plot tsb ke dalam file png yang sebelumnya dibuat"
dev.off()

"Membuat barplot jumlah pemain berdasarkan kaki dominan untuk seluruh data"
barplot(table(data$foot), ylab = "Jumlah", main = "Jumlah Pemain Berdasarkan Kaki Dominan", ylim = c(0,12000))

"Membuat file png untuk menyimpan data jumlah pemain berdasarkan kaki dominan"
png(filename = "dominant leg world (base).png")

"Menyimpan plot tsb ke dalam file png yang sebelumnya dibuat"
dev.off()

