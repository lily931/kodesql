-- Bab 16.4: Common Table Expressions (CTEs) dengan WITH
-- Contoh kueri yang menggunakan CTE.

-- Menampilkan detail jurusan beserta jumlah mahasiswanya
WITH JurusanPopuler AS (
    -- Langkah 1: Hitung jumlah mahasiswa per jurusan
    SELECT
        Kode_Jurusan,
        COUNT(NIM) AS Jumlah_Mahasiswa
    FROM
        MAHASISWA
    WHERE Kode_Jurusan IS NOT NULL
    GROUP BY
        Kode_Jurusan
)
-- Langkah 2: Gabungkan hasil hitungan dengan detail nama jurusan
SELECT
    j.Nama_Jurusan,
    jp.Jumlah_Mahasiswa
FROM
    JurusanPopuler jp
INNER JOIN
    JURUSAN j ON jp.Kode_Jurusan = j.Kode_Jurusan
ORDER BY
    jp.Jumlah_Mahasiswa DESC;