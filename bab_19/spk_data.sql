-- Bab 19: Studi Kasus SPK - Data DML
INSERT INTO DOSEN (Id_Dosen, Nama_Dosen) VALUES ('D01', 'Prof. Adiwijaya'), ('D02', 'Dr. Indah Sari'), ('D03', 'Bambang Sugiharto, M.T.');
INSERT INTO MAHASISWA (NIM, Nama_Mahasiswa) VALUES ('1011', 'Budi Santoso'), ('1012', 'Citra Lestari'), ('1013', 'Doni Wijaya');
INSERT INTO MATA_KULIAH (Kode_MK, Nama_MK, SKS) VALUES ('MK01', 'Basis Data', 3), ('MK02', 'Jaringan Komputer', 3), ('MK03', 'Pemrograman Web', 4);
INSERT INTO PERIODE (Id_Periode, Nama_Periode, Tgl_Mulai, Tgl_Selesai) VALUES (1, 'Ganjil 2023/2024', '2023-09-01', '2024-01-31');
INSERT INTO KRITERIA_PENILAIAN (Id_Kriteria, Nama_Kriteria) VALUES ('K1', 'Penguasaan Materi'), ('K2', 'Kemampuan Menjelaskan'), ('K3', 'Kedisiplinan Waktu'), ('K4', 'Interaksi dengan Mahasiswa');
INSERT INTO KELAS (Id_Kelas, Id_Periode, Kode_MK, Id_Dosen) VALUES (101, 1, 'MK01', 'D01'), (102, 1, 'MK02', 'D02');
INSERT INTO PESERTA_KELAS (Id_Peserta, Id_Kelas, NIM) VALUES (1, 101, '1011'), (2, 101, '1013'), (3, 102, '1012');
INSERT INTO PENILAIAN (Id_Penilaian, Id_Peserta, Id_Kriteria, Skor) VALUES (1, 1, 'K1', 5), (2, 1, 'K2', 4), (3, 1, 'K3', 5), (4, 1, 'K4', 4), (5, 2, 'K1', 4), (6, 2, 'K2', 4), (7, 2, 'K3', 5), (8, 2, 'K4', 5), (9, 3, 'K1', 5), (10, 3, 'K2', 5), (11, 3, 'K3', 4), (12, 3, 'K4', 5);