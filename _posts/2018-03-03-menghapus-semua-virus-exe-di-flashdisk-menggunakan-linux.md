---
layout: post
title: Cara Menghapus Semua File EXE di Flash Disk Menggunakan Linux
date: 2018-03-03 12:57:00
tags: [linux, bash]
---

1. Buka Terminal

2. Masuk ke perangkat. Kali ini, lokasi perangkat adalah `/dev/sdb1/` maka ketik perintah berikut

    ```bash
    cd "/dev/sdb1"
    ```

3. Ketik perintah berikut untuk menampilkan semua file `exe`

    ```bash
    find -iname "*.exe"
    ```

4. Ketik perintah berikut untuk menghapus permanen semua file `exe` di perangkat tersebut

    ```bash
    find -iname "*.exe" -exec rm {} \;
    ```