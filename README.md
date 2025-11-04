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