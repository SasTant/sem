REM Iseng2 nyomot command dari internet
REM buat nyari file yang ada di drive
REM DOS bkan free software ya?? 

cls
@echo off
title Satindra

echo.
echo Bat file untuk mencari file di DRIVE / Root folder
echo dan menyimpannya ke hasil_indra6.txt
echo wild card (* dan ?) bisa digunakan
echo.
echo.
echo.

:cari
set /p XXX=Ketik string atau nama file yg ingin dicari:

dir "\%xxx%" /s /d>hasil_indra6.txt

cls
echo.
echo.
echo Hasil tersimpan di file hasil_indra6.txt di direktori yang sama
echo.

start ./hasil_indra6.txt /max

goto opsi

:carip
cls
echo.
echo.
set /p XXX=Ketik string atau nama file yg ingin dicari:

dir "\%xxx%" /s /d>>hasil_indra6.txt

cls
echo.
echo.
echo Hasil tersimpan di file hasil_indra6.txt di direktori yang sama
echo.

start ./hasil_indra6.txt /max

goto opsi

:opsi
ECHO.
ECHO 1. Cari lagi dengan hasil ditulis ulang
ECHO 2. Cari lagi dengan.hasil ditambahkan
ECHO 3. Keluar
set choice=
set /p choice=Ketik angka sesuai pilihan : 
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto cari
if '%choice%'=='2' goto carip
if '%choice%'=='3' goto end

echo.
ECHO "%choice%" SALAH!
echo.
echo Silahkan Masukkan 1, 2, atau 3
ECHO.
goto opsi

:end
cls
echo.
echo Sampai Jumpa
timeout 1
exit
