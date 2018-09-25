---
layout: post
title:  "Skrip untuk Upload ke Git"
date:   2018-09-25 10:08:00 +0800
tags: pemrograman
---

Ini isi skrip `upload`

~~~bash
while true
	do

		# skrip upload ke git nya

		git status
		git add -A .
		git commit -m 'oke'
		git push

		# untuk pause

		read -rsp $'Tekan sembarang tombol untuk upload lagi.\n\n\t'"$1"$'\n\n' -n 1 key

	done
~~~

{% include iklan2.html %}

Ini skrip `github`

~~~bash
# clone git

git clone --depth=1 https://username:password@github.com/username/$1
mv $1 "$1 (github)"
~~~

Ini skrip `gitlab`

~~~bash
# clone git

git clone --depth=1 https://username:password@gitlab.com/username/$1
mv $1 "$1 (gitlab)"
~~~

Cara clone nya, `gitlab nama-repo` atau `github nama-repo`. Dan cara uploadnya, buka foldernya terus ketik `upload nama-repo`