-- Bab 20: Kueri Operasional SPK -- kodesql/bab20/01_kueri_operasional.sql (Bagian 1)
SELECT k.Id_Kelas, mk.Nama_MK, d.Nama_Dosen, pk.Id_Peserta FROM MAHASISWA m JOIN PESERTA_KELAS pk ON m.NIM = pk.NIM JOIN KELAS k ON pk.Id_Kelas = k.Id_Kelas JOIN MATA_KULIAH mk ON k.Kode_MK = mk.Kode_MK JOIN DOSEN d ON k.Id_Dosen = d.Id_Dosen JOIN PERIODE p ON k.Id_Periode = p.Id_Periode WHERE m.NIM = '1011' AND p.Id_Periode = 1;
INSERT INTO PENILAIAN (Id_Penilaian, Id_Peserta, Id_Kriteria, Skor) VALUES (13, 1, 'K1', 5);
-- kodesql/bab20/01_kueri_operasional.sql (Bagian 2)
-- Contoh menyimpan hasil penilaian dari Budi Santoso (NIM 1011) untuk kelas Basis Data (Id_Kelas 101)
-- Aplikasi perlu mencari Id_Peserta terlebih dahulu. Misal, ditemukan Id_Peserta = 1.

-- (Aplikasi akan menjalankan perintah INSERT ini sebanyak jumlah kriteria)
INSERT INTO PENILAIAN (Id_Penilaian, Id_Peserta, Id_Kriteria, Skor) VALUES (13, 1, 'K1', 5);
INSERT INTO PENILAIAN (Id_Penilaian, Id_Peserta, Id_Kriteria, Skor) VALUES (14, 1, 'K2', 4);
INSERT INTO PENILAIAN (Id_Penilaian, Id_Peserta, Id_Kriteria, Skor) VALUES (15, 1, 'K3', 5);
INSERT INTO PENILAIAN (Id_Penilaian, Id_Peserta, Id_Kriteria, Skor) VALUES (16, 1, 'K4', 4);
