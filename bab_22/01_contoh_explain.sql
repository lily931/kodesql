-- Bab 22: Pengantar Optimisasi Kueri
-- Menjalankan EXPLAIN pada kueri sebelum dan sesudah indeks dibuat.

-- 1. Analisis sebelum ada indeks (kemungkinan besar akan menghasilkan 'Seq Scan')
EXPLAIN SELECT * FROM MAHASISWA WHERE Nama_Lengkap = 'Budi Santoso';

-- 2. Membuat indeks
CREATE INDEX idx_mahasiswa_nama ON MAHASISWA (Nama_Lengkap);

-- 3. Analisis setelah indeks dibuat (seharusnya menghasilkan 'Index Scan')
EXPLAIN SELECT * FROM MAHASISWA WHERE Nama_Lengkap = 'Budi Santoso';