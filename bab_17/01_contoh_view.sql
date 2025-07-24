-- Bab 17.1: Views
CREATE OR REPLACE VIEW V_DETAIL_MAHASISWA AS
SELECT m.NIM, m.Nama_Lengkap, j.Nama_Jurusan
FROM MAHASISWA m
LEFT JOIN JURUSAN j ON m.Kode_Jurusan = j.Kode_Jurusan;

-- Cara menggunakan view
SELECT * FROM V_DETAIL_MAHASISWA WHERE Nama_Jurusan = 'Teknik Informatika';