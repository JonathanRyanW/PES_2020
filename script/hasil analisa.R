"Kita cuman ngambil data dari 5 negara dengan jumlah pemain terbanyak. Data ini
jumlahnya 5201 dan ini udah lebih dari 33% dari seluruh data yang kita punya.
Gpp lah ini udh cukup banyak"

"Kita cari rata2 tinggi badan dan berat badan dari pemain2 tersebut berdasarkan
negara mereka. Yang menarik adalah hasilnya kurang lebih sama semua hahaha."

"Kita bisa cari data rata2 tinggi dan berat badan dr negara2 ini di websitenya UN.
UN pasti punya data demografik kayak gini. Stlh kita dapatkan data dr UN, kita
bandingkan dengan hasil rata2 yang kita dapatkan."

"Ya ampun data berat badan dan umur juga mirip2 semua. Ini semua pemain bola yg
hebat emang harus begini kali ya bentuk badannya. Tinggi harus 180cm an, berat
badan harus 74kg an dan umur harus 25 tahunan."

"Mungkin menarik kalau kita bisa cari rata2 berat badan untuk negara2 lain. Bisa jadi
negara2 yg kurang hebat dalam sepakbola ya krn memang bentuk badan penduduk mereka
nggak mendukung untuk jadi pemain sepakbola. Kita bisa aja melakukan analisa tsb dgn
data ini, tpi masalahnya ada bbrp negara yang jumlah pemainnya di PES sedikit sekali.
Sebagai contoh Indonesia, indo tuh cuman 1 orang loh, klo kita ngambil rata2 dr pemain
indo di pes ya cuman 1 orang ini aja si R Basna, kasian banget, padahal kan pemain
sepakbola di indo ada jauh lebih banyak daripada 1. Nggak representatif bgt. Mau tdk
mau harus ambil data dari semua pemain (atau sebagian besar pemain) dari suatu negara
Klo ini nggak representatif."

"Kalau kita cari rata2 tinggi badan dari semua negara maka kita akan mendapatkan
hasil bahwa rata2 tinggi badan pemain bola yg ada di pes kurleb sama semua. Barplot
bisa didapatkan dengan code ini."

barplot(tapply(data$height, data$nationality, mean))

"Setelah kita explore nationality, tinggi, berat, dan umur, kita coba explore kaki
yang dominan mereka, apakh mereka dominan kaki kanan atau kaki kiri"

"Yang menarik mengenai kaki dominan ini adalah bahwa 1203/5201 = 23.1% pemain ternyata
kaki kirinya yang dominan. Ini proporsi yang tidak sebanding dengan proporsi org
bertangan kidal di dunia. Berdasarkan artikel dari psychology today yang bisa diakses
dari variable url_psych_today, estimasi proporsi orang kidal di dunia adalah 10.6%.
Dengan asumsi bahwa orang yang bertangan kidal juga akan memiliki kaki dominan kiri
maka proporsi 23.1% yang kita dapatkan ini tidak sesuai. Dengan asumsi bahwa pemain
yang namanya bisa masuk ke PES adalah pemain yang hebat atau terkenal, kita bisa
mengatakan bahwa ada kemungkinan memiliki kaki dominan berupa kaki kiri memberikan
advantage bagi pemain tersebut. Bisa jadi karena kaki dominannya kaki kiri maka
pemain lawan yang tidak terbiasa berhadapan dengan pemain kidal akan kesulitan dan
harus menyesuaikan diri. We are creatures of habit, kalau dikasih sesuatu yg baru
kita butuh waktu utk menyesuaikan."

"Seandainya kaki kiri dominan memberikan advantage bagi seorang pemain dan asalan
5 negara teratas memiliki pemain yang jauh lebih banyak adalah karena mereka lebih
hebat dan lebih terkenal maka kita bisa mengharapkan bahwa sebagian besar dari pemain
kidal akan berada di 5 negara teratas tersebut. Apabila hipotesis ini benar maka
proporsi pemain kidal yang terdapat di 5 negara teratas harusnya lebih daripada 34.6%
yang merupakan proporsi pemain di 5 negara teratas. Kalau kita lihat dari seluruh
data, bukan cuman data 5 negara teratas, kita bakal mendapatkan proporsi kaki kiri
dominan adalah 3178/11857 = 26.8 %. Hasil ini tidak jauh beda dengan 23.1% yang kita
dapatkan di 5 negara teratas. Ini menunjukkan bhw 1203/3178 = 37.8% dari semua pemain
kidal ada di 5 negara teratas, padahal 5 negara teratas cuman melingkupi 5201/15035 =
34.6% data. Hal ini memberikan tambahan bukti, meskipun lemah, bahwa kaki kiri
dominan memang memberikan advantage kepada seorang pemain sepak bola."

"untuk kedepannya kita tidak akan melakukan analisa terhadap seluruh data apabila tdk
diperlukan. Analisa yang sebelumnya dilakukan karena seandainya benar akan menjadi
bukti tambahan. Untuk kedepannya kita hanya akan menganalisa data 5 negara teratas."

"Pertanyaan: Bagaimana PES memilih pemain yang akan dimasukkan ke dalam gamenya?
Apakah yang dipilih adalah pemain2 hebat dari suatu negara atau bagaimana? Cara
pemilihan pemain ini bisa mempengaruhi analisa kita. Apabila ada semacam bias atau
kecenderungan dalam memilih pemain maka data yang kita miliki pun bias sehingga tdk
bisa digunakan untuk mengeneralisasi ke pemain sepak bola seluruh dunia."

"Sekarang kita coba melihat apakah ada efek kidal terhadap performa pemain. Sblmnya
efek dari kidal ke tinggi, berat, dan umur belum kita cek. Seharusnya sih tidak ada
ya karena aneh aja kalau ada. Nanti kita akan kesini, tpi sblmnya ke performa dulu.
Data mengenai performa bisa dilihat di kolom overall rating, rating as gk, dst."

"Kalau kita lihat dari overall rating, kidal 70.6 sementara nggak kidal 69.2. Ini
kelihatannya perbedaan yang kecil sekali ya. Untuk seluruh dunia nilainya 69.6 dan
68.2. Tidak jauh berbeda juga. Jangan2 punya kaki kiri dominan hanya berguna ketika
melawan pemain bola yang bukan best of the best? Jangan2 it is only enough to get
into PES but ketika u lawan pemain yang hebat advantage u nggak memberikan efek yg
recognizeable."

"Perbandingkan rating yang noticeable mungkin di LB ya. Pada saat analisa ini
dilakukan gw bahkan nggak tau LB itu apa. Sepertinya sih LB itu salah satu posisi
di sepak bola ya. Mungkin ada alasan yang bagus kenapa perbedaanya bisa sampe 4 poin"

"Ada ide yang lumayan bagus nih, kita coba cari tau dari semua measurement yg ada
dimana aja secara rata2 pemain kidal menang dan dimana aja dominan kanan menang.
Measurement yang ada kayaknya ada di kolom ke 25 (offensive awareness) sampe kolom
ke 67 (rating_as_CF). Kita bisa bikin 1 data frame sendiri dengan kolom2 nya adalah
kolom 25 sampe 67 dan baris pertama berisi rata2 untuk left foot sementara baris
kedua rata2 untuk right foot. Kemudian baris ke3 menunjukkan nilai left - right.
Kemudian baris ke 4 menunjukkan kaki yang mana yang lebih baik."

"hasilnya disimpan di variable measure_foot. Hasilnya adalah dari 43 measurement
yang ada, kaki kiri lebih baik pada 31 measurement dan kalah pada 12 measurement
lainnya. Kalau kita perhatikan, kaki kiri kalah di semua 6 measurement yg berkaitan
dengan GK (Goal Keeping). Ini bisa jadi pertanyaan juga nih, kenapa org yg kaki kiri
dominan kok jelek di GK? Hasil analisa ini sudah Menunjukkan dengan jelas bahwa
memiliki kaki kiri yang dominan adalah advantage dalam sepak bola."

"Sebenarnya hal ini bisa jadi tidak benar. Bisa jadi bukan kaki kiri yang memberikan
advantage namun orang yang memiliki kaki kiri dominan memang secara fisik lebih kuat
dibandingkan dengan org yg kaki kanannya dominan (ini dugaan saja). Atau bisa jadi
orang yang kaki kirinya dominan entah mengapa lebih bekerja keras dibandingkan dgn
yang kaki kanannya dominan sehingga performa mereka memang lebih baik (bisa jd sih)
Namun demikian faktanya sudah tidak bisa dibantah, orang yg kaki kirinya dominan
memiliki skor lebih tinggi secara umum."

"Analisa ini bisa dilakukan untuk seluruh data, hasilnya di simpan di variable lain
yang namanya measure_foot_world"

"Oke kita udh explore bbrp variable tapi kita masih belum explore variable skill dan
Playing style. Abis itu ada juga soal umur 24, 25-29, trus ada rating star. Data ini
masih bisa diexplore. Tapi sekarang udah cukup puas sih dapet hasil ini."

"next kita coba cari apakah kiri dominan memiliki skill yang lebih banyak dibanding
kaki kanan dominan. Setelah itu kita coba lihat apakah kiri dominan memliki playing
style yang cenderung lebih sering dipakai drpd playing style lainnya."
