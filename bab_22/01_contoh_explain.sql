-- Bab 22: Pengantar Optimisasi Kueri
-- 1. Analisis sebelum ada indeks (kemungkinan besar akan menghasilkan 'Seq Scan')
EXPLAIN SELECT * FROM MAHASISWA WHERE Nama_Mahasiswa = 'Budi Santoso';

-- 2. Membuat indeks
CREATE INDEX idx_mahasiswa_nama1 ON mahasiswa (Nama_Mahasiswa(100));

-- 3. Analisis setelah indeks dibuat (seharusnya menghasilkan 'Index Scan')
EXPLAIN SELECT * FROM MAHASISWA WHERE Nama_Mahasiswa = 'Budi Santoso';
