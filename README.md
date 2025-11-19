# allmighty_store

## Tugas 7
1. Jelaskan apa itu widget tree pada Flutter dan bagaimana hubungan parent-child (induk-anak) bekerja antar widget!
Widget tree ialah struktur yang memetakan hubungan antar widget (yaitu hubungan parent-child) pada suatu projek flutter.

Cara hubungan parent-child bekerja antar widget:
    1. Parent memberi batasan (Constraints) ke Child.
    2. Child menentukan ukurannya (Size) sendiri.
    3. Parent menentukan posisi (Position) Child.

2.  Sebutkan semua widget yang kamu gunakan dalam proyek ini dan jelaskan fungsinya.
    1. Material App: untuk membuat aplikasi dengan Material Design (desain gaya Google).
    3. StatelessWidget: untuk membuat widget yang statenya tidak berubah.
    4. Scaffold: untuk menyediakan struktur dasar halaman Material Design (appBar, body).
    5. AppBar: untuk bar di bagian atas aplikasi yang berisi judul.
    6. Text: untuk menampilkan tulisan.
    7. Padding: untuk memberi spasi di sekeliling widget anaknya.
    8. Column: untuk menyusun widget-widget anaknya secara vertikal (dari atas ke bawah).
    9. Row: untuk menyusun widget-widget anaknya secara horizontal (dari kiri ke kanan).
    10. SizedBox: untuk membuat sebuah kotak dengan ukuran spesifik.
    11. Center: untuk menempatkan widget anaknya di tengah-tengah area yang tersedia.
    12. GridView: untuk menampilkan daftar widget dalam tata letak grid (papan).
    13. Card: untuk membuat panel (kartu) bergaya Material Design.
    14. Container: untuk membuat kotak yang bisa diatur lebar, tinggi, padding, dll.
    15. Material: untuk menyediakan "kanvas" Material Design.
    16. InkWell: untuk membuat widget anaknya (seperti Container) bisa diklik.
    17. SnackBar: untuk menampilkan pesan notifikasi.
    18. Icon: untuk menampilkan gambar ikon.

    Custom widget:
    1. InfoCard: untuk menampilkan informasi NPM, Nama, Kelas menggunakan Card.
    2. ItemCard: untuk menampilkan tombol di dalam GridView.
    3. MyHomePage: Halaman utama.

3. Apa fungsi dari widget MaterialApp? Jelaskan mengapa widget ini sering digunakan sebagai widget root.
Fungsi: untuk membuat aplikasi dengan Material Design (desain gaya Google), yang akan menjadi struktur dasar dan konfigurasi aplikasi tersebut.

Alasan: Jika kita menjadikan MaterialApp sebagai widget root, semua anak-anaknya akan mendapatkan akses ke theme, navigasi standar Flutter, efek UI Material (ripple, elevation, AppBar, SnackBar, dll), dan lain-lain.

4. Jelaskan perbedaan antara StatelessWidget dan StatefulWidget. Kapan kamu memilih salah satunya?
Stateless widget: widget yang statenya tidak berubah.
Stateful widget: widget yang statenya berubah-rubah.

Kapan memilih:
1. Stateless widget : Ketika widget tidak perlu perubahan, seperti contohnya widget Text.
2. Stateful widget : Ketika widget perlu    perubahan, seperti contohnya Form.

5.  Apa itu BuildContext dan mengapa penting di Flutter? Bagaimana penggunaannya di metode build?
    Build Context : Petunjuk bagi widget, agar widget tahu posisinya, sehingga tahu parentnya siapa.
    Kenapa penting? Karena jika tidak ada BuildContext, widget tidak tahu parentnya siapa, dan tidak dapat menggunakan context yang sudah diberikan oleh parentnya.

    build dapat menggunakan context dari BuildContext untuk membaca theme, akses ukuran layar (MediaQuery), navigasi ke halaman lain, dan lain-lain.

6.  Jelaskan konsep "hot reload" di Flutter dan bagaimana bedanya dengan "hot restart".
hot reload: fitur flutter yang memungkinkan developer untuk melihat perubahan kode secara langsung tanpa kehilangan state aplikasi.

Sedangkan hot restart adalah

hot restart: fitur flutter yang memungkinkan developer untuk melihat perubahan kode, namun state aplikasi dimulai dari awal.

## Tugas 8
1.  Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement() pada Flutter. Dalam kasus apa sebaiknya masing-masing digunakan pada aplikasi Football Shop kamu?
- Navigator.push() menumpuk halaman yang baru di atas halaman kita, sehingga bisa back ke halaman yang ditumpuk tersebbut.
    Dalam projek ini, digunakan pada tombol di halaman utama, agar ketika menekan tombol back, akan kembali ke halaman utama.

- Navigator.pushReplacement() mengganti halaman kita sekarang dengan halaman baru, sehingga tidak bisa back ke halaman yang diganti tersebut.
    Dalam projek ini, digunakan pada tombol di left_drawer, agar ketika menekan tombol back, tidak muncul bagian left drawernya.

2. Bagaimana kamu memanfaatkan hierarchy widget seperti Scaffold, AppBar, dan Drawer untuk membangun struktur halaman yang konsisten di seluruh aplikasi?

- Untuk membangun struktur halaman yang konsisten, saya menggunakaan drawer yang sama untuk setiap kemunculan Scaffold, yaitu LeftDrawer, agar struktur drawer konsisten di setiap tampilannya. Untuk appbar di scaffold, saya hanya menyamakan warnanya saja.

3.  Dalam konteks desain antarmuka, apa kelebihan menggunakan layout widget seperti Padding, SingleChildScrollView, dan ListView saat menampilkan elemen-elemen form? Berikan contoh penggunaannya dari aplikasi kamu.

- Padding: untuk memberi jarak di sekitar widget anaknya, sehingga elemen2 form tidak terlalu dekat.
Contoh: setiap input di form saya, semuanya memiliki jarak (padding). 

-SingleChildScrollView : untuk membuat seluruh isi halaman bisa di-scroll saat isinya sangat panjang, sehingga kita bisa memiliki elemen form yang ba   nyak tanpa khawatir tidak cukup space.
Contoh : Dalam menampilkan elemen2 form di form add product.

-Listview : mirip SingleChildScrollView.
Contoh: Dalam menampilkan elemen2 di leftdrawer pada proyek ini.

4.  Bagaimana kamu menyesuaikan warna tema agar aplikasi Football Shop memiliki identitas visual yang konsisten dengan brand toko?

Saya memilih warna tema yang mirip dengan proyek allmighty store saya di website, lalu menerapkannya di setiap halaman agar konsisten.

## Tugas 9

1. Jelaskan mengapa kita perlu membuat model Dart saat mengambil/mengirim data JSON? Apa konsekuensinya jika langsung memetakan Map<String, dynamic> tanpa model (terkait validasi tipe, null-safety, maintainability)?
- kita perlu membuat model Dart untuk mengubah data dari proyek django kita menjadi objek Dart yang dapat dikenali oleh Dart.
- langsung memetakan Map<String, dynamic> tanpa model (terkait validasi tipe, null-safety, maintainability): 
1. Kesalahan tipe baru akan terdeteksi saat runtime, bukan saat kompilasi.
2. Harus selalu menggunakan operator null-check.
3. Logika pemetaan data ke properti harus ditulis berkali-kali. Jadi jika ada error di penamaan data contohnya, harus diubah di setiap kemunculannya.

2.  Apa fungsi package http dan CookieRequest dalam tugas ini? Jelaskan perbedaan peran http vs CookieRequest?
Fungsi :
- http : Menyediakan fungsionalitas request (GET, POST, PUT, dan DELETE) ke alamat URL. 
- CookieRequest : Menyediakan fungsionalitas  Cookie dan CSRF (Cross-Site Request Forgery) Token untuk keperluan autentikasi.

Peran http: Melakukan request melalui protokol HTTP.
Peran CookieRequest: Mengelola Cookie dan CSRF untuk autentikasi.

3.  Jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
    karena CookieRequesr menyimpan status autentikasi (session). Contohnya : untuk mengakses daftar produk, kita harus login terlebih dahulu. Jika cookierequest tidak dibagikan, kita harus instansi cookierequest yang berbeda beberapa kali, dan status login yang kita perlukan ini, hanya akan tersimpan di cookierequest yang pertama saja. 

4.  Jelaskan konfigurasi konektivitas yang diperlukan agar Flutter dapat berkomunikasi dengan Django. Mengapa kita perlu menambahkan 10.0.2.2 pada ALLOWED_HOSTS, mengaktifkan CORS dan pengaturan SameSite/cookie, dan menambahkan izin akses internet di Android? Apa yang akan terjadi jika konfigurasi tersebut tidak dilakukan dengan benar?
- Konfigurasi konektivitas yang diperlukan agar Flutter dapat berkomunikasi dengan Django:
    1. Menambahkan 10.0.2.2 pada ALLOWED_HOSTS:
        - Kita perlu ini karena Django akan menolak permintaan dari IP yang tidak ada di daftar ALLOWED_HOSTS. (walaupun saya memakai localhost:8000 karena menampilkan flutter lewat chrome).
        Jika tidak dilakukan dengan benar: Django mengembalikan respons HTTP 400 Bad Request.

    2. Mengaktifkan CORS (Cross-Origin Resource Sharing):
        - Mengaktifkannya dengan cara mendowload package django-cors-headers di Django, lalu menambahkan 'corsheaders.middleware.CorsMiddleware' di bagian middleware.
        - Kita perlu ini karena Flutter berjalan di origin yang berbeda (Emulator/Web Browser) dari server Django.
        Jika tidak dilakukan dengan benar: Permintaan akan diblokir oleh Flutter/browser.

    3. Mengaktifkan Pengaturan SameSite/Cookie.
        - Kita mengaturnya di proyek django dengan:
        ``` 
        CORS_ALLOW_ALL_ORIGINS = True
        CORS_ALLOW_CREDENTIALS = True
        CSRF_COOKIE_SECURE = True
        SESSION_COOKIE_SECURE = True
        CSRF_COOKIE_SAMESITE = 'None'
        SESSION_COOKIE_SAMESITE = 'None'

        ```
        - Tujuannya karena Memungkinkan cookie dikirim dalam permintaan cross-site dan mengharuskan cookie hanya dikirim melalui koneksi HTTPS (agar lebih secure).
        Jika tidak dilakukan dengan benar: Session cookie tidak tersimpan di sisi klien.

    4. Menambahkan izin akses internet di Android
        - Agar aplikasi Android memiliki izin untuk mengakses jaringan internet.
        Jika tidak dilakukan dengan benar: Aplikasi tidak dapat membuat koneksi jaringan

    5. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
        1. Pengambilan Input dan Serialisasi Data: Data input yang diambil dikonversi menjadi format string JSON.
        2. Pengiriman Permintaan: CookieRequest membuat permintaan ke django.
        3. Penerimaan di Backend : Request diterima yang mengarahkan ke fungsi  di views.py di django
        4. Respons Balik : Django mengirimkan respons JSON yang diperlkukan oleh Flutter.
        5. Flutter menerima respons : Menampilkan hasil dari perintah pengguna.

    6. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
        1. Register: 
            1. Pengambilan Input dan Serialisasi Data:
                - Pengguna memasukkan username, password, dan konfirmasi password. Data ini kemudian diubah ke format string JSON.
            2. Pengiriman POST:
                - CookieRequest mengirim permintaan ke registrasi Django.
            3. Validasi Backend:
                - Request diterima. Django memvalidasi data, lalu jika valid, akun baru dibuat dan disimpan ke database.
            4. Respons: 
                - Django merespons dengan JSON, apakah berhasil atau gagal.
            5. Navigasi:
                - Jika berhasil, user diarahkan ke halaman login.
        
        2. Login:
            1. Pengambilan Input:
                - Pengguna memasukkan username, password
            2. Pengiriman POST:
                - Metode .login() mengirim permintaan POST ke endpoint login Django. Setelah otentikasi berhasil, CookieRequest secara otomatis menangkap dan menyimpan Session Cookie yang dikirim oleh Django.
            3. Pengecekan dan navigasi: 
                - Flutter memeriksa apakah login berhasil, jika iya, pengguna akan diarahkan ke homepage.

        2. Logout:
            1. Permintaan logout:
                Metode logout() dipanggil melalui instance CookieRequest.
            2. Hapus session :
                Request diterima di Django, lalu django menghapus session.
            3. Navigasi :
                User diarahkan kembali ke halaman login.


### Mengimplementasikan checklist secara step-by-step:

1. Memastikan deployment proyek tugas Django kamu telah berjalan dengan baik.
    - Mengecek kembali proyek django dengan runserver dan cek fitur-fitur.
2. Mengintegrasikan sistem autentikasi  Django dengan proyek tugas Flutter dan membuat fitur login, register, logout.
    1. Tidak menambahkan pada ALLOWED_HOST karena menggunakan chrome, namun mengaktifkan CORS dan pengaturan SameSite/cookie django, dan menambahkan izin akses internet di Android. buat juga app baru di django bernama authentication.
    2. Buat fungsi login, register dan logout di authentication/views.py dan route url-nya.
    3. Di flutter, install package provider dan pbp_django_auth, lalu modifikasi root widget untuk menyediakan CookieRequest library ke semua child widgets.
    4. buat login.dart, dan register.dart di flutter. Lalu buat tombol logout baru di menu.

3. Membuat model kustom sesuai dengan proyek aplikasi Django.
    - Buka endpoint JSON di proyek django, lalu salin data json dan ubah ke Dart dengan web Quicktype, lalu salin kdoe dart tersebut ke product_entry.dart .

4. Membuat halaman yang  berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy. 
    1.  Menambahkan endpoint proxy untuk mengatasi masalah CORS di django.
    2. Buat file news_entry_card.dart dan news_entry_list.dart dan isi dengan widget yang sesuai untuk tampilannya. Konfigurasi juga navigasinya. Tidak lupa tampilkan name,stock, price, description, thumbnail, category, dan is_featured.

5. Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item.
    - Buat news_detail.dart dan isi dengan widget yang sesuai untuk tampilannya. Jangan lupa Tampilkan seluruh atribut pada model item pada halaman ini, dan tambahkan tombol untuk kembali ke halaman daftar item.

6. Melakukan filter pada halaman daftar item dengan hanya menampilkan item yang terasosiasi dengan pengguna yang login.
    1. ubah fungsi show_json  di main/views.py agar bisa memfilter data berdasarkan user yang sedang login jika diminta.
    2. Tambahkan variabel state untuk menyimpan status filter, mengubah URL fetch, lalu tambahkan tombol di AppBar di product_entry_list.dart .





