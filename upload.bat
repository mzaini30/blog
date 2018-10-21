@echo off

set /p commit=Masukkan nama commit: 

git status
git add -A .
git commit -m "%commit%"
git push