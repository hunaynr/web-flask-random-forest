# Sistem Informasi Klasifikasi Kerusakan Tranformator Daya

<p align="justify">Aplikasi yang dikembangkan untuk memudahkan proses pengelompokan abnormalitas yang terjadi pada transformator daya. Seiring dengan pengoperasian transformator dihasilkan kontaminan berupa partikel gas akibat pemanasan, inkonsistensi tegangan maupun pengaruh lingkungan. Gas yang terbentuk dapat menurunkan performa transformator sehingga diperlukan pengamatan terhadap konsentrasi gas. Sistem menerima input berupa konsentrasi gas yang akan menghasilkan jenis kerusakan yang terjadi pada transformator daya

![img_0](img/img_0.png)<br><br>

## Perancangan Sistem dan Pembentukan Database

<p align="justify">Uraian berbagai tindakan yang dapat difasilitasi oleh sistem tercermin dalam bentuk diagram berikut. Terdapat satu tipe user yang bertindak sebagai admin untuk melakukan proses klasifikasi dan seluruh elemen yang mendukung mekanisme sistem</p>

![img_1](img/img_1.png)<br><br>

<p align="justify">Data yang dihasilkan untuk setiap kegiatan klasifikasi oleh sistem tersimpan dalam tabel yang saling terhubung dalam bagan dibawah ini</p>

![img_2](img/img_2.png)<br><br>

## Fitur Sistem

-   #### Konstruksi Model dan Training Dataset

<p align="justify">Fitur ini berfungsi sebagai dasar pembangunan model Random Forest dari data training berdasarkan letak koordinat yang diolah menggunakan acuan dataset</p>

![img_3](img/img_3.png)<br>

-   #### Klasifikasi Kerusakan Transformator Daya

<p align="justify">Fitur ini untuk memberikan layanan kepada user terhadap sistem ketika terdapat data konsentrasi gas terlarut baru yang akan dipetakan kedalam label/kelas tujuan</p>

![img_4](img/img_4.png)<br><br>
![img_5](img/img_5.png)<br>

-   #### Tingkat Akurasi Model

<p align="justify">Fitur ini untuk memberikan layanan kepada user terhadap sistem ketika terdapat data konsentrasi gas terlarut baru yang akan dipetakan kedalam label/kelas tujuan</p>

![img_6](img/img_6.png)<br>

-   #### History Klasifikasi

<p align="justify">Fitur ini untuk memberikan layanan kepada user terhadap sistem ketika terdapat data konsentrasi gas terlarut baru yang akan dipetakan kedalam label/kelas tujuan</p>

![img_7](img/img_7.png)<br>

## Kesimpulan

<p align="justify">Pembentukan Sistem Informasi Klasifikasi Kerusakan Tranformator Daya difungsikan untuk menunjang proses penggolongan disfungsi transformator daya. User berperan sebagai admin untuk melakukan seluruh entitas dalam proses klasifikasi. Modifikasi terkait kebutuhan klasifikasi kerusakan transformator daya dengan waktu proses yang lebih singkat dan analisis yang lebih simple dan ringan terwujud dalam bentuk pembangunan program</p>
