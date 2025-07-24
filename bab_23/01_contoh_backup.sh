#!/bin/bash
# Bab 23: Pencadangan dan Pemulihan
# Contoh perintah untuk membuat full backup database PostgreSQL.
# Perintah ini dijalankan di terminal/command line, bukan di dalam SQL client.

# Ganti 'nama_user' dengan username PostgreSQL Anda.
# Ganti 'akademik' dengan nama database yang ingin di-backup.
pg_dump -U nama_user -W -F p akademik > akademik_backup.sql