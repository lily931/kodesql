-- Bab 16.3: Agregasi dan Pengelompokan Data
-- Contoh kueri-kueri yang menggunakan GROUP BY dan HAVING.

-- GROUP BY: Menghitung jumlah mahasiswa per jurusan
SELECT
    Kode_Jurusan,
    COUNT(NIM) AS Jumlah_Mahasiswa
FROM
    MAHASISWA
WHERE
    Kode_Jurusan IS NOT NULL
GROUP BY
    Kode_Jurusan;

-- GROUP BY dengan HAVING: Menampilkan jurusan yang memiliki lebih dari 1 mahasiswa
SELECT
    Kode_Jurusan,
    COUNT(NIM) AS Jumlah_Mahasiswa
FROM
    MAHASISWA
WHERE
    Kode_Jurusan IS NOT NULL
GROUP BY
    Kode_Jurusan
HAVING
    COUNT(NIM) > 1;