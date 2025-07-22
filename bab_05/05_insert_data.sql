-- Bab 5: SQL - DML
-- Menambahkan data baru ke tabel JURUSAN dan MAHASISWA

-- Memasukkan data jurusan
INSERT INTO JURUSAN (Kode_Jurusan, Nama_Jurusan) VALUES ('TI', 'Teknik Informatika');
INSERT INTO JURUSAN (Kode_Jurusan, Nama_Jurusan) VALUES ('SI', 'Sistem Informasi');

-- Memasukkan data mahasiswa
INSERT INTO MAHASISWA (NIM, Nama_Lengkap, Tanggal_Lahir, Kode_Jurusan) VALUES ('1011', 'Budi Santoso', '2002-08-15', 'TI');
INSERT INTO MAHASISWA (NIM, Nama_Lengkap, Tanggal_Lahir, Kode_Jurusan) VALUES ('1012', 'Citra Lestari', '2003-01-20', 'SI');