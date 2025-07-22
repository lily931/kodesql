-- Bab 13: Data Warehousing
-- Contoh implementasi Star Schema untuk data penjualan

-- Tabel Dimensi Waktu
CREATE TABLE DimWaktu (
    Id_Waktu INT PRIMARY KEY,
    Tanggal DATE,
    Bulan INT,
    Kuartal INT,
    Tahun INT
);

-- Tabel Dimensi Produk
CREATE TABLE DimProduk (
    Id_Produk INT PRIMARY KEY,
    Nama_Produk VARCHAR(100),
    Kategori VARCHAR(50)
);

-- Tabel Fakta Penjualan
CREATE TABLE FactPenjualan (
    Id_Penjualan INT PRIMARY KEY,
    Id_Waktu INT,
    Id_Produk INT,
    Jumlah_Terjual INT,
    Total_Pendapatan DECIMAL(15, 2),
    FOREIGN KEY (Id_Waktu) REFERENCES DimWaktu(Id_Waktu),
    FOREIGN KEY (Id_Produk) REFERENCES DimProduk(Id_Produk)
);