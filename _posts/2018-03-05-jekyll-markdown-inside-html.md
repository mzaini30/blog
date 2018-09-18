---
layout: post
title: 'Jekyll: Compile Markdown Inside HTML Tag'
date: 2018-03-05 19:38:00
tags: [jekyll, markdown, html]
---

Gunakan atribut `markdown='1'` untuk elemen yang di dalamnya akan dimasukkan skrip yang berformat markdown. Contohnya, kita ingin skrip markdown pada _contoh 1_ di dalam skrip html di _contoh 2_:

__Contoh 1__

```markdown
Saat langit berwarna merah saga

Dan kerikil perkasa berlarian

Meluncur laksana puluhan peluru

Terbang bersama teriakan takbir
```

__Contoh 2__

```html
<article>
	<section>
		
	</section>
</article>
```

Maka, kita gabungkan (dengan mengaktifkan atribut `markdown='1'`) menjadi seperti berikut:

```html
<article>
	<section markdown='1'>
Saat langit berwarna merah saga

Dan kerikil perkasa berlarian

Meluncur laksana puluhan peluru

Terbang bersama teriakan takbir	
	</section>
</article>
```