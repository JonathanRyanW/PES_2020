"Memasukan data kedalam variable data"
data <- read.csv("./data/pes_player_2020.csv")

"Mengaktifkan package dplyr"
library(dplyr)

"Mengambil data measurement (kolom 25 sampai 67)"
data_measure_foot <- select(data, offensive_awareness:rating_as_CF)

"Memasukkan kolom foot kedalam data frame yang baru dibuat"
data_measure_foot$foot <- data$foot

"Membuat data measurement untuk kaki kiri dan kanan"
data_measure_foot_left <- filter(data_measure_foot, data_measure_foot$foot == "Left foot")
data_measure_foot_right <- filter(data_measure_foot, data_measure_foot$foot == "Right foot")

"Menghapus kembali kolom foot yang tadi ditambahkan dari seluruh data frame"
data_measure_foot <- select(data_measure_foot, offensive_awareness:rating_as_CF)
data_measure_foot_left <- select(data_measure_foot_left, offensive_awareness:rating_as_CF)
data_measure_foot_right <- select(data_measure_foot_right, offensive_awareness:rating_as_CF)

"Menambahkan 1 baris berisi rata2 measurement untuk kaki kiri"
data_measure_foot <- rbind(data_measure_foot, sapply(data_measure_foot_left, mean))

"Menambahkan 1 baris berisi rata2 measurement untuk kaki kanan"
data_measure_foot <- rbind(data_measure_foot, sapply(data_measure_foot_right, mean))

"Menambahkan 1 baris yang berisi nilai left - right"
data_measure_foot <- rbind(data_measure_foot, sapply(data_measure_foot_left, mean) - sapply(data_measure_foot_right, mean))

"Membuat sebuah vektor yang berisi keterangan kaki mana yang lebih hebat"
x <- data_measure_foot[15038,] > 0
for (i in 1:43) {
  if (x[i] == TRUE){
    x[i] <- "Left foot"
  }
  
  if (x[i] == FALSE){
    x[i] <- "Right foot"
  }
}

"Menambahkan 1 baris yang berisi kaki mana yang lebih hebat (lebih besar nilainya)"
data_measure_foot <- rbind(data_measure_foot,x)

"Mengambil 4 baris terakhir dari dataframe tadi"
measure_foot_world <- tail(data_measure_foot, n=4)

"Memberikan nama baris yang sesuai"
row.names(measure_foot_world) <- c("Left foot mean", "Right foot mean", "Left - Right", "Better")

"Mencari tau jumlah measurement dimana kaki kiri lebih baik"
sum(measure_foot_world[4,] == "Left foot")

"Menghapus data frame yang sebelumnya digunakan untuk mencapai hasil ini"
rm(data_measure_foot, data_measure_foot_left, data_measure_foot_right, x, i)
