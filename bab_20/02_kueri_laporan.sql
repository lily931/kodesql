-- Bab 20: Kueri Laporan SPK
SELECT
    d.Nama_Dosen,
    kp.Nama_Kriteria,
    AVG(p.Skor) AS Skor_Rata_Rata
FROM
    PENILAIAN p
JOIN
    PESERTA_KELAS pk ON p.Id_Peserta = pk.Id_Peserta
JOIN
    KELAS k ON pk.Id_Kelas = k.Id_Kelas
JOIN
    DOSEN d ON k.Id_Dosen = d.Id_Dosen
JOIN
    KRITERIA_PENILAIAN kp ON p.Id_Kriteria = kp.Id_Kriteria
WHERE
    d.Id_Dosen = 'D01'
GROUP BY
    d.Nama_Dosen,
    kp.Nama_Kriteria,
    kp.Id_Kriteria -- Ditambahkan di sini
ORDER BY
    kp.Id_Kriteria;
