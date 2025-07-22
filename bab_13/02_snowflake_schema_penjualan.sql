-- Bab 13: Data Warehousing
-- Contoh implementasi Snowflake Schema untuk data penjualan

-- Tabel Dimensi Kategori (dinormalisasi dari DimProduk)
CREATE TABLE DimKategori (
    Id_Kategori INT PRIMARY KEY,
    Nama_Kategori VARCHAR(50)
);

-- Tabel Dimensi Produk sekarang merujuk ke Kategori
CREATE TABLE DimProduk_Snowflake (
    Id_Produk INT PRIMARY KEY,
    Nama_Produk VARCHAR(100),
    Id_Kategori INT,
    FOREIGN KEY (Id_Kategori) REFERENCES DimKategori(Id_Kategori)
);

-- Tabel Fakta tetap sama, tetapi sekarang terhubung ke DimProduk_Snowflake
-- CREATE TABLE FactPenjualan ...