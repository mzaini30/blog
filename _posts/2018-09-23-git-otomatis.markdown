---
layout: post
title:  "Bash: Skrip untuk Upload ke Git Otomatis di Semua Folder yang Pakai Git"
date:   2018-09-23 08:21:00 +0800
tags: pemrograman
---

# Setting PATH Terlebih Dahulu

Path ini kegunaannya adalah kita siapkan folder khusus yang bisa kita isi aplikasi nantinya, atau skrip. Jadi, nggak usah kita capek-capek buka skrip kita dengan membuka foldernya lalu mengetikkan `./skrip`. Cukup dengan mengetikkan `skrip` aja di Terminal.

Di bawah ini adalah langkah-langkahnya

Buka `.bashrc` di `~/`

Tambahkan skrip berikut di akhir file

~~~bash
export PATH="$PATH:~/aplikasi/bin/"
~~~

Reboot atau Logout dari Elementary OS

# Buat Clone dari Gitlab dan Github

Buka `~/aplikasi/bin/`

Buat file `github` yang berisi

~~~bash
# clone git

git clone --depth=1 https://username:password@github.com/username/$1
mv $1 "$1 (github)"

# masukkan ke list

aplikasi_upload_semua='~/aplikasi/bin/upload'

printf 'cd "' >> $aplikasi_upload_semua
printf '%s' "${PWD}" >> $aplikasi_upload_semua
printf '%s' "/$1 (github)" >> $aplikasi_upload_semua
printf '"' >> $aplikasi_upload_semua
printf '\n' >> $aplikasi_upload_semua
printf 'upload-biasa' >> $aplikasi_upload_semua
printf '\n' >> $aplikasi_upload_semua
~~~

Kemudian buat file `gitlab` yang berisi

~~~bash
# clone git

git clone --depth=1 https://username:password@gitlab.com/username/$1
mv $1 "$1 (gitlab)"

# masukkan ke list

aplikasi_upload_semua='~/aplikasi/bin/upload'

printf 'cd "' >> $aplikasi_upload_semua
printf '%s' "${PWD}" >> $aplikasi_upload_semua
printf '%s' "/$1 (gitlab)" >> $aplikasi_upload_semua
printf '"' >> $aplikasi_upload_semua
printf '\n' >> $aplikasi_upload_semua
printf 'upload-biasa' >> $aplikasi_upload_semua
printf '\n' >> $aplikasi_upload_semua
~~~

Buat file `upload-biasa` yang berisi

~~~bash
git status
git add -A .
git commit -m 'oke'
git push
~~~

Terakhir, buat file `upload` yang dikosongkan aja

# Ayo Kita Coba

Misalnya aku mau clone `notes` yang di Gitlab ke folder `/mnt/C48455A884559E2C/game/`, maka aku tinggal mengetikkan `gitlab notes` di folder tersebut

Setelah itu akan muncul folder dengan nama `notes (gitlab)`

Nah, coba kita buka file `upload` nya yang di `~/aplikasi/bin`, maka akan bertuliskan

~~~bash
cd "/mnt/C48455A884559E2C/game/notes (gitlab)"
upload-biasa

~~~

Sekarang, untuk upload ke Git semua folder, tinggal mengetikkan `upload` saja di Terminal

# Tambahan

Buat juga skrip `upload-manual` yang berisi

~~~bash
while true
	do

		# skrip upload ke git nya

		git status
		git add -A .
		git commit -m 'oke'
		git push

		# untuk pause

		read -rsp $'Tekan sembarang tombol untuk upload lagi.\n\n\t'$1$'\n\n' -n 1 key

	done
~~~

Buat jaga-jaga siapa tau nggak masuk di list foldernya