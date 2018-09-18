---
layout: post
title: Skrip Download dan Upload Ketika Menggunakan Git
date: 2018-03-03 13:41:00
tags: [git, command prompt, bash]
---

# Persiapan

```bash
git config --global user.name username
git config --global user.email email
```

# Linux

## Download

```bash
git clone --depth=1 https://user:pass@gitlab.com/user/$1.git
mv $1 "$1 (git)"
```

## Upload

```bash
while true
    do
        git status
        git add -A .
        git commit -m "oke"
        git push
        sleep 3m
    done
```

# Windows

## Download

```shell
@echo off
title Download dari Gitlab

set /p repo="Sebutkan nama repositori Gitlab: "

git clone --depth=1 https://user:pass@gitlab.com/user/%repo%.git
rename %repo% "%repo% (git)"
pause
```

## Upload

```shell
@echo off
title Upload

:app
git status
git add -A .
git commit -m "oke"
git push

timeout /t 180 /nobreak
goto app
```