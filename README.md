# Laporan Praktikum Pemrograman Mobile - Flutter

**Nama** : Siti Aulia Febriana
**NIM** : H1D024134
**Shift Lama** : B
**Shift Baru** : E
**Praktikum** : Pemrograman Mobile

---

## 📝 Tugas Pertemuan 1: Bahasa Pemrograman Dart

**Tanggal:** Rabu, 21 Oktober 2026

### Deskripsi Teknis & Non-Teknis

- **Non-Teknis:** Pengenalan dasar bahasa pemrograman Dart sebagai fondasi utama pengembangan aplikasi multi-platform menggunakan Flutter, mencakup konsep dasar pemrograman berorientasi objek (OOP), eksepsi, dan pemrograman asinkronus.
- **Teknis:**
  - Mencoba dasar Dart secara online menggunakan DartPad (`https://dartpad.dev`).
  - Mempelajari tipe data (`int`, `double`, `String`, `bool`, `var`), operasi matematika, dan logika.
  - Implementasi struktur kontrol, percabangan, dan fungsi.
  - Pembuatan kelas (class) dan objek (object), penggunaan `import`, penanganan eksepsi (`try-catch`), serta operasi asinkronus dengan `async` dan `await`.

### Kesimpulan Praktikum

Pertemuan pertama memberikan pemahaman mengenai sintaks dan fitur inti bahasa Dart yang menjadi dasar sebelum membangun antarmuka aplikasi dengan Flutter.

---

## 📝 Tugas Pertemuan 2: Widget & Design Flutter

**Tanggal:** Rabu, 28 Oktober 2026

### Deskripsi Teknis & Non-Teknis

- **Non-Teknis:** Pengenalan framework Flutter, instalasi dan konfigurasi lingkungan pengembangan, pembuatan struktur folder proyek, serta pemahaman tata letak dasar antarmuka pengguna mobile.
- **Teknis:**
  - Instalasi Flutter SDK, konfigurasi PATH, dan pembuatan proyek `belajarflutter`.
  - Membuat aplikasi *Hello World* menggunakan `MaterialApp`, `Scaffold`, `AppBar`, `Center`, dan `Text` dengan `StatelessWidget`.
  - Memisahkan kode ke beberapa file `.dart` (`hello_world.dart`, `column_widget.dart`, `row_widget.dart`) agar lebih rapi.
  - Membuat layout vertikal (`Column`) dan horizontal (`Row`).
  - Membuat form input menggunakan `TextField` dengan `TextEditingController` pada `ProdukForm` (`StatefulWidget`), lalu navigasi ke halaman `ProdukDetail` dengan `Navigator.push`.
  - Menampilkan daftar data menggunakan `ListView`, `Card`, dan `ListTile` pada `ProdukPage`.

### Struktur Folder

```
lib/
├── main.dart
├── hello_world.dart
├── column_widget.dart
├── row_widget.dart
└── ui/
    ├── produk_form.dart
    ├── produk_detail.dart
    └── produk_page.dart
```

### Cara Menjalankan

```bash
flutter pub get
flutter run
```

### Hasil / Screenshot
<img width="716" height="1600" alt="image" src="https://github.com/user-attachments/assets/254a44c9-e846-476f-9d75-65e180da05a1" />
<img width="716" height="1600" alt="image" src="https://github.com/user-attachments/assets/e474022f-d41f-4fd7-9ab2-237cc8b65df7" />
<img width="716" height="1600" alt="image" src="https://github.com/user-attachments/assets/37afe799-5372-4f94-beb3-1773967e980e" />


### Kesimpulan Praktikum

Pertemuan kedua memberikan pemahaman tentang penggunaan widget dasar di Flutter, perbedaan `StatelessWidget` dan `StatefulWidget`, pengelolaan form input, navigasi antar halaman, serta penyusunan daftar item menggunakan `ListView`.

## 📝 Tugas Pertemuan 3: Routes, Side Menu, Login dan Local Storage
**Tanggal**: Rabu, 4 November 2026

### Deskripsi Teknis & Non-Teknis
* **Non-Teknis**: Implementasi sistem autentikasi pengguna (login), manajemen penyimpanan data lokal (*local storage*) pada perangkat, pengelolaan alur navigasi (*routing*), serta pembuatan menu samping (*drawer / side menu*) untuk navigasi multi-halaman.
* **Teknis**:
  * **Menambahkan Dependency**: Menambahkan package `shared_preferences` ke dalam file `pubspec.yaml` untuk kebutuhan penyimpanan sesi pengguna secara persisten pada penyimpanan lokal perangkat.
  * **Halaman Login (`login_page.dart`)**:
    * Menggunakan `StatefulWidget` dengan `TextEditingController` untuk mengontrol input username dan password.
    * Mengimplementasikan fungsi `_saveUsername()` untuk menyimpan username ke dalam local storage via `SharedPreferences`.
    * Mengimplementasikan `_showInput()` untuk merender `TextField` dengan placeholder dan opsi sensor password (`obscureText`).
    * Mengimplementasikan `_showDialog()` untuk menampilkan pop-up konfirmasi (`AlertDialog`).
    * Menambahkan logika autentikasi: jika username dan password adalah `admin`, sistem menyimpan sesi pengguna dan berpindah ke `HomePage`; jika tidak sesuai, sistem menampilkan dialog kesalahan.
  * **Konfigurasi Routing Awal (`main.dart`)**:
    * Mengonfigurasi `MaterialApp` dengan tema Material klasik biru (`primarySwatch: Colors.blue`, `useMaterial3: false`) agar serasi dengan desain modul.
    * Mengatur properti `home` agar langsung memuat `LoginPage`.
  * **Halaman Utama (`home_page.dart`)**:
    * Menggunakan fungsi asinkronus `_loadUsername()` untuk membaca data username yang telah tersimpan di `SharedPreferences` saat halaman dimuat.
    * Menampilkan teks sambutan dengan nama user di tengah layar (`Center`).
    * Memasang properti `drawer` dengan widget `Sidemenu` untuk navigasi.
  * **Side Menu / Drawer (`sidemenu.dart`)**:
    * Membangun menu navigasi laci menggunakan `Drawer`, `ListView`, dan `DrawerHeader`.
    * Menyediakan opsi menu `ListTile` untuk navigasi ke halaman **Home** (`HomePage`) dan halaman **About** (`AboutPage`) menggunakan `Navigator.push`.
  * **Halaman About (`about_page.dart`)**:
    * Membuat halaman informasi aplikasi dengan `AppBar`, teks konten di bagian `Center`, serta menyertakan `drawer` agar drawer menu tetap dapat diakses dari halaman ini.

### Struktur Folder
```text
lib/
├── main.dart
├── login_page.dart
├── home_page.dart
├── sidemenu.dart
├── about_page.dart
├── hello_world.dart
├── column_widget.dart
├── row_widget.dart
└── ui/
    ├── produk_form.dart
    ├── produk_detail.dart
    └── produk_page.dart
```

### Kredensial Login (Testing)
* **Username**: `admin`
* **Password**: `admin`

### Cara Menjalankan
```bash
flutter pub get
flutter run
```

### Hasil / Screenshot
<img width="716" height="1600" alt="image" src="https://github.com/user-attachments/assets/9fd07499-0b69-4a87-b87c-ab0b96506175" />
<img width="716" height="1600" alt="image" src="https://github.com/user-attachments/assets/a3cd7652-d5fd-4791-978d-2d4e7217287d" />


### Kesimpulan Praktikum
Pertemuan ketiga memberikan pemahaman mendalam mengenai pembuatan sistem autentikasi sederhana pada Flutter, penggunaan `shared_preferences` untuk menyimpan dan membaca data lokal perangkat, implementasi dialog interaktif (`AlertDialog`), serta pembuatan navigasi hierarkis dan menu drawer samping (`Drawer` & `ListTile`) untuk menghubungkan berbagai halaman aplikasi.

## 📝 Tugas Pertemuan 4: Operasi CRUD dengan API CodeIgniter 4 & Flutter Tokokita
**Tanggal:** Rabu, 11 November 2026

### Deskripsi Teknis & Non-Teknis
- **Non-Teknis:** Memahami dan mengimplementasikan arsitektur RESTful API sebagai jembatan komunikasi data antara backend server (CodeIgniter 4 dan database MySQL) dengan frontend aplikasi mobile (Flutter Tokokita). Mempelajari pembuatan model data (serialization/deserialization JSON), validasi form input yang komprehensif, serta antarmuka operasi CRUD (Create, Read, Update, Delete) produk pada aplikasi mobile.
- **Teknis:**
  - **Backend & Database (CodeIgniter 4 & MySQL):**
    - Membuat database `toko_api` pada MySQL dengan tabel `member` (autentikasi pengguna), `member_token` (token login), dan `produk` (katalog produk).
    - Mengonfigurasi parameter koneksi database pada `app/Config/Database.php`.
    - Membuat controller induk `RestfulController` yang mewarisi `ResourceController` CodeIgniter 4 dengan standarisasi respon JSON (`code`, `status`, `data`).
    - Membuat model data `MRegistrasi`, `MMember`, `MLogin`, dan `MProduk`.
    - Membuat controller `RegistrasiController` (enkripsi password dengan `password_hash`), `LoginController` (validasi kredensial dan pembuatan auth token acak), serta `ProdukController` (fungsi CRUD: `create`, `list`, `detail`, `ubah`, `hapus`).
    - Menambahkan rute RESTful pada `app/Config/Routes.php` untuk endpoint `/registrasi`, `/login`, dan grup `/produk` (method GET, POST, PUT, DELETE).
    - Melakukan pengujian endpoint API menggunakan aplikasi Postman.
  - **Frontend Mobile (Flutter Tokokita):**
    - Membuat folder `lib/model/` dan membuat file model `login.dart`, `registrasi.dart`, dan `produk.dart` dengan factory constructor `fromJson` untuk pemetaan data JSON dari API ke objek Dart.
    - Membuat form registrasi pada `lib/ui/registrasi_page.dart` dengan validasi input yang ketat: panjang nama minimal 3 karakter, validasi format email menggunakan ekspresi reguler (RegExp), panjang password minimal 6 karakter, dan pencocokan konfirmasi password.
    - Membuat form login pada `lib/ui/login_page.dart` dengan validasi input, tautan navigasi `InkWell` menuju halaman registrasi, dan tombol login yang mengarahkan ke halaman katalog produk.
    - Membuat halaman katalog produk pada `lib/ui/produk_page.dart` menggunakan `ListView` dan widget modular `ItemProduk` (`Card` & `ListTile`), tombol tambah (`+`) di `AppBar` untuk membuka form input, serta navigasi drawer dengan menu `Logout`.
    - Membuat form produk pada `lib/ui/produk_form.dart` yang dinamis (mendukung mode tambah dan mode ubah data secara otomatis) dengan fungsi `isUpdate()`.
    - Membuat halaman detail produk pada `lib/ui/produk_detail.dart` yang menampilkan rincian produk terpilih, dilengkapi tombol aksi **EDIT** (warna hijau) yang membuka form ubah dan tombol **DELETE** (warna merah) dengan dialog konfirmasi `AlertDialog`.

### Struktur Folder
```text
lib/
├── main.dart
├── model/
│   ├── login.dart
│   ├── registrasi.dart
│   └── produk.dart
└── ui/
    ├── registrasi_page.dart
    ├── login_page.dart
    ├── produk_page.dart
    ├── produk_form.dart
    └── produk_detail.dart
```

### Cara Menjalankan
```bash
flutter pub get
flutter run
```

### Hasil / Screenshot
<img width="716" height="1600" alt="image" src="https://github.com/user-attachments/assets/9039b0ad-d86b-41b7-840b-ca19361d421d" />
<img width="716" height="1600" alt="image" src="https://github.com/user-attachments/assets/34cb0ff2-d77a-4e84-92a4-2c05ff2590b1" />
<img width="716" height="1600" alt="image" src="https://github.com/user-attachments/assets/be21cbfa-c463-4407-bd51-5d10561eba1b" />
<img width="716" height="1600" alt="image" src="https://github.com/user-attachments/assets/b62e0d61-4886-469c-ab4f-75c84d9e2b07" />


### Kesimpulan Praktikum
Pertemuan keempat memberikan pemahaman menyeluruh tentang integrasi sistem client-server, perancangan RESTful API menggunakan framework CodeIgniter 4, perancangan basis data relasional untuk sistem autentikasi dan inventaris, pemetaan data JSON ke model Dart, penerapan validasi form komposit pada Flutter, serta perancangan antarmuka mobile multi-halaman untuk alur operasi CRUD (Create, Read, Update, Delete) yang dinamis dan terstruktur.
