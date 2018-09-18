---
layout: post
title: Cara Format Flashdisk di Linux
date: 2018-03-03 12:55:00
tags: [linux, bash]
---

1. Buka Terminal

2. Ketik perintah berikut untuk menampilkan daftar perangkat yang terhubung

    ```bash
    fdisk -l
    ```

3. Karena perangkat yang akan diformat adalah `/dev/sdb1/`, maka ketikkan perintah berikut untuk mengeluarkan perangkat

    ```bash
    umount /dev/sdb1
    ```

4. Ketik perintah berikut untuk mulai memformat

    ```bash
    mkfs.vfat /dev/sdb1
    ```