# MiniShop-Mobile

MiniShop-Mobile adalah aplikasi mobile berbasis **Flutter** yang menampilkan katalog produk layaknya mini market online. Aplikasi ini mendukung tampilan kategori produk serta desain antarmuka yang sederhana namun interaktif.

## Penggunaan Widget

Aplikasi ini menggunakan widget `MyShopApp` sebagai `StatelessWidget` yang membungkus `MaterialApp` sebagai root. Widget `MaterialApp` mengatur tema, initial route, tabel routes, serta `onGenerateRoute` yang menghasilkan navigasi dinamis ke halaman daftar produk dan detail produk melalui `MaterialPageRoute`. Navigasi ke halaman dilakukan dengan `Navigator.pushNamed`, yang memungkinkan perpindahan antar halaman sambil membawa argumen.

Pada halaman `HomeScreen`, struktur tampilan dibangun menggunakan widget `Scaffold` yang berisi `AppBar` dan body. Widget body terdiri dari `Container` dengan latar `LinearGradient`, kemudian kontennya disusun menggunakan `Column` yang menampilkan teks dan grid kategori menggunakan widget `GridView.count`. Setiap kategori ditampilkan dalam widget `Container` berbentuk kartu dengan dekorasi seperti gradient, bayangan, dan ikon, serta dibungkus dengan widget `InkWell` agar dapat ditekan oleh pengguna.

Halaman `ProductListScreen` menggunakan widget `Scaffold` dengan `AppBar` yang menampilkan nama kategori. Tampilan latar menggunakan widget `Container` dengan `BoxDecoration` bergaya gradasi. Isi halaman ditata menggunakan widget `Column` yang menampilkan chip kategori serta daftar produk menggunakan `GridView.count` dua kolom. Setiap produk ditampilkan dalam widget `Container` bergaya kartu dengan gradient, shadow, radius, ikon, dan teks. Widget `InkWell` digunakan agar kartu produk bisa membuka halaman detail saat ditekan.

Pada `ProductDetailScreen`, widget `Scaffold` digunakan dengan `AppBar` bertuliskan “Detail Produk”. Konten halaman dipusatkan dengan widget `Center` berisi widget `Container` dengan latar gradasi dan bayangan sebagai kartu utama. Konten kartu disusun menggunakan widget `Column` dengan `mainAxisSize.min`, menampilkan ikon, nama, serta harga produk. Tambahan widget seperti bingkai ikon dan badge harga digunakan untuk menonjolkan tampilan informasi produk.

Pengaturan tema aplikasi dikontrol melalui widget `ThemeData` pada `AppTheme.lightTheme`, yang mengatur warna utama, background, colorScheme, appBarTheme, floatingActionButtonTheme, elevatedButtonTheme, cardTheme, dividerTheme, serta textTheme menggunakan Google Fonts Inter. Palet warna disimpan dalam `AppColors` sehingga seluruh widget dalam aplikasi memiliki tampilan visual yang konsisten dan harmonis.

## 📱 Fitur Utama

- Tampilan halaman home  
- Daftar kategori produk  
- Navigasi halaman  
- Tampilan antar muka bersih dan responsif  
- Asset preview tersedia di folder `preview`

## 🎨 Preview Tampilan

### 🏠 Home
![Home](preview/Home.png)

### 🍚 Beras & Biji
![Beras dan Biji](preview/BerasDanBiji.png)

### 🍪 Makanan Ringan
![Makanan Ringan](preview/MakananRingan.png)

### 🧂 Minyak & Bumbu
![Minyak dan Bumbu](preview/MinyakDanBumbu.png)

### 🧽 Peralatan Rumah
![Peralatan Rumah](preview/PeralatanRumah.png)

### 🥛 Susu & Minuman
![Susu dan Minuman](preview/SusuDanMinuman.png)
