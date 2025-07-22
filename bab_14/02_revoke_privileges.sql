-- Bab 14: Keamanan dan Otorisasi
-- Contoh mencabut hak akses

-- Mencabut hak DELETE pada tabel MAHASISWA dari pengguna 'staf_akademik'
REVOKE DELETE ON MAHASISWA FROM staf_akademik;