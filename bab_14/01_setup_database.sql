-- Skrip ini menyiapkan database, tabel, dan data awal.
-- Jalankan skrip ini pertama kali.

-- Hapus database jika sudah ada untuk memulai dari awal (opsional)
DROP DATABASE IF EXISTS db_perusahaan;

-- 1. Membuat database baru
CREATE DATABASE db_perusahaan;

-- 2. Menggunakan database yang baru dibuat
USE db_perusahaan;

-- 3. Membuat tabel 'penjualan'
CREATE TABLE penjualan (
    id_penjualan INT AUTO_INCREMENT PRIMARY KEY,
    nama_produk VARCHAR(100) NOT NULL,
    jumlah INT NOT NULL,
    harga_per_unit DECIMAL(10, 2) NOT NULL,
    tanggal_transaksi DATE,
    id_karyawan INT
);

-- 4. Memasukkan beberapa contoh data
INSERT INTO penjualan (nama_produk, jumlah, harga_per_unit, tanggal_transaksi, id_karyawan) VALUES
('Laptop Pro', 5, 15000000.00, '2025-07-20', 101),
('Mouse Wireless', 20, 250000.00, '2025-07-21', 102),
('Keyboard Mechanical', 15, 850000.00, '2025-07-22', 101),
('Webcam HD', 10, 600000.00, '2025-07-23', 103);

-- Verifikasi data sudah masuk
SELECT * FROM penjualan;
