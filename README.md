## Latihan: Playtest

1. Apa saja pesan log yang dicetak pada panel Output?
```cmd
Platform initialized
Reached objective!
```
2. Coba gerakkan landasan ke batas area bawah, lalu gerakkan kembali ke atas hingga hampir menyentuh batas atas. Apa saja pesan log yang dicetak pada panel Output?
```
Platform initialized
Reached objective!
```
3. Buka scene MainLevel dengan tampilan workspace 2D. Apakah lokasi scene ObjectiveArea memiliki kaitan dengan pesan log yang dicetak pada panel Output pada percobaan sebelumnya?  

Terdapat CollisionShape2D (kotak biru) pada bagian atas mendekati play area dan area collision biru juga diberikan untuk BlueShip dimana jika collision BlueShip menyentuh ujung dari CollisionShape2D akan menampilkan teks `Reached objective` pada output.

## Latihan: Memanipulasi Node dan Scene

1. Scene BlueShip dan StonePlatform sama-sama memiliki sebuah child node bertipe Sprite. Apa fungsi dari node bertipe Sprite?

Tipe `Node` `Sprite` memiliki fungi menampilkan texture 2D dimana bisa untuk menampilkan potongan texture dari map yang besar atau menampikan dari spritesheet untuk animasi. Pada BlueShip node Sprite digunakan untuk menampilkan texture atau gambar pesawat terbang.

2. Root node dari scene BlueShip dan StonePlatform menggunakan tipe yang berbeda. BlueShip menggunakan tipe RigidBody2D, sedangkan StonePlatform menggunakan tipe StaticBody2D. Apa perbedaan dari masing-masing tipe node?

RigidBody2D : Physics Body atau objek yang tidak bisa digerakkan oleh dan harus diberikan kekuatan eksternal seperti gravitasi atau dorongan body lain.
  - Akan bereaksi kepada kolisi benda lain
  - Mempengaruhi body lain
  - Pada tutorial BlueShip dipengaruhi oleh dorongan StonePlatform

StaticBody2D : Physics Body atau objek yang hanya bisa digerakkan oleh code seperti input player ketika menekan suatu tombol dan tidak bisa digerakkan oleh pengaruh body lain seperti dorongan atau gravitasi.
  - Tidak bereaksi kepada kolisi benda lain
  - Tidak mempengaruhi body lain
  - Pada tutorial StonePlatform dikendalikan oleh player untuk mendorong RigidBody2D BlueShip.

4. Ubah nilai atribut Mass pada tipe RigidBody2D secara bebas di scene BlueShip, lalu coba jalankan scene MainLevel. Apa yang terjadi?

Pada mass 100 Kg, 1 Kg, dan 0.001 Kg tidak terlalu terlihat perbedaan pengaruh atau kecepatan jatuh saat mendorong StonePlatform. Percepatan jatuh tidak berubah karena gravitasi bekerja sama pada semua massa, dan dorongan ke StonePlatform tidak menunjukkan perbedaan signifikan karena gaya dorong BlueShip tetap (dibantu hukum newton kedua).
Jika ingin perubahan terlihat harus diubah damping, gravity scale, dll.

5. Ubah nilai atribut Disabled pada tipe CollisionShape2D di scene StonePlatform, lalu coba jalankan scene MainLevel. Apa yang terjadi?

BlueShip akan jatuh saat permainan dimulai karena tidak ada collision pada StonePlatform sehingga collision shape BlueShip tidak menyentuh apapun.

6. Pada scene MainLevel, coba manipulasi atribut Position, Rotation, dan Scale milik node BlueShip secara bebas. Apa yang terjadi pada visualisasi BlueShip di Viewport?

Sesuai dengan nama atributnya posisi spawn, orientasi rotasi, dan ukuran dari BlueShip terubah.

7. Pada scene MainLevel, perhatikan nilai atribut Position node PlatformBlue, StonePlatform, dan StonePlatform2. Mengapa nilai Position node StonePlatform dan StonePlatform2 tidak sesuai dengan posisinya di dalam scene (menurut Inspector) namun visualisasinya berada di posisi yang tepat?

Kedua StonePlatform dan StonePlatform2 posisi nodenya relatif dengan area PlatformBlue bukan dengan scene mainm, karena merupakan Child Node dari PlatformBlue.

## Latihan Mandiri: Membuat Level Baru

Changes: 
- Added controls to space ship 
- Added a player 2 with alternate controls
- Added new objectives for each player
	- Green needs to go to the left zone while Blue goes right
