# Puzzle Concept and Some Level Design

# A. Playing Field

- Bentuk _grid_ dapat berbeda-beda, seperti 6x6, 7x5, dll
- Minimal ada satu jalan keluar atau _escape path_ untuk _Player Block_\-nya
- Minimal terdapat empat _Building Block_, termasuk _Player Block_

# B. Building Blocks

Terdapat 3 jenis building block:

- _Movement Block_, bergerak menyesuaikan dengan arah panahnya (Hijau-Vertikal, Kuning-Horizontal) dan memiliki ukuran yang berbeda-beda
- _Player Block_ (Warna Merah), bergerak maju-mundur menyesuaikan dengan orientasinya
- _Obstructing Block_ (Warna Hitam), tidak bisa bergerak dan tidak dapat digerakkan, berada di dalam area _playing field_

# C. Gimmicks and Objective

1) Objective:

- _Player Block_ harus _Escape_ atau keluar dari area _playing field_ sesuai dengan jalan keluarnya

2) Gimmicks:

- _Getting The Star_, terdapat sebuah bintang berwarna kuning yang dapat diambil oleh _Player Block_ di dalam area _Playing Field_, dengan catatan bintang tersebut harus berada di dalam jangkauan grid dari _Playing Block_
- _Time Attack_, Player harus mencoba menyelesaikan dengan waktu kurang dari yang telah ditentukan
- _Portal System_ (Opsional), terdapat dua portal yang berwarna sama sehingga _Player Block_ dapet melewatinya ke sisi yang lain dari portal tersebut
- _Slippery Blocks_ (Opsional), beberapa atau semua _building blocks_ menjadi licin sehingga tidak bisa berhenti selama masih ada movement hingga ke titik akhir

# D. Gimmick Explanation

1) Getting The Star

- Bintang harus berada di depan atau di belakang _Player Block_, karena tidak memungkinkan dapat diambil jika posisinya berbeda grid

2) Portal System

- Portal pertama dapat memindahkan _Player Block_ ataupun _building blocks_ yang lainnya ke sisi portal kedua
- Portal tidak boleh membelah _Player Block_, hanya berada di salah satu posisi saja, yaitu sebelum atau sesudah memasuki portal

3) Slippery Blocks

- _Buliding blocks_ menjadi licin, sehingga mereka tidak akan bisa berhenti sampat bertemu dengan tembok atau _obstructing block_ atau _building blocks_ lainnya

# E. Level Design for Level 1-5

- Level 1 (Introduction)

Grid: 6x6
Time duration at most: 10 seconds
Least movement required with stars: 9 moves

- Level 2 (Parallel Parking)

Grid: 7x5
Time duration at most: 15 seconds
Least movement required with stars: 11 moves

- Level 3 (Around You)

Grid: 6x6
Time duration at most: 20 seconds
Least movement required with stars: 15 moves

- Level 4
- Level 5
