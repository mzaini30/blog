---
layout: post
title: Memunculkan File dan Folder yang Disembunyikan oleh Virus Shortcut
date: 2018-03-03 13:23:00
tags: [windows, command prompt]
---

1. Buka folder yang seharusnya ada isinya
2. Pencet `Shift` + `klik kanan` lalu pilih `Open Command Window Here`
3. Ketikkan

    ```bash
    attrib -s -h /s /d
    ```
