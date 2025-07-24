#!/bin/bash
# Bab 23: Pencadangan dan Pemulihan
# Contoh perintah untuk memulihkan database PostgreSQL dari file backup.

# Ganti 'nama_user' dengan username PostgreSQL Anda.
# Ganti 'nama_database_baru' dengan nama untuk database yang akan dipulihkan.
createdb -U nama_user nama_database_baru

# Memulihkan data dari file backup ke database yang baru
psql -U nama_user -d nama_database_baru < akademik_backup.sql