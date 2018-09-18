---
layout: post
title: Cara Uppercase di Setiap Baris Sublime Text
date: 2018-03-03 17:21:00
tags: [sublime text, regex]
---

Mungkin kita biasa menggunakan `title case` di sublime ya untuk membuat semua menjadi _title case_. Contohnya adalah kalimat `aku makan nasi`. Kalau pakai _title case_, maka menjadi `Aku Makan Nasi`. Namun, yang menjadi masalah adalah kalau itu _multiple line_. Maka, dia tidak bisa _title case_ secara sempurna. Contohnya:

```
kehidupan bagaikan roda
beribu zaman terus berputar
namun satu tak akan pudar
cahya allah tetap membahana
```

Kalau kita menggunakan _title case_, maka hanya akan menjadi:

```
Kehidupan Bagaikan Roda
beribu Zaman Terus Berputar
namun Satu Tak Akan Pudar
cahya Allah Tetap Membahana
```

Nah, pada kata `beribu`, `namun`, dan `cahya`, kok nggak _title case_? Cara mengatasinya adalah dengan menggunakan _find and replace_ lalu mengaktifkan regex.

Pada kotak _find_, ketikkan skrip berikut:

```
(^|\.\s|…\s)([a-z])
```

Lalu, pada kotak _replace_, ketikkan skrip berikut:

```
\1\u\2
```

Maka, secara otomatis, semua awal kalimat, menjadi _title case_.