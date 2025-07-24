-- Bab 17.2: Stored Procedures (Contoh sintaks MySQL/MariaDB)
DELIMITER $$
CREATE PROCEDURE DaftarkanMahasiswaBaru(
    IN p_NIM CHAR(4),
    IN p_Nama_Lengkap VARCHAR(100),
    IN p_Kode_Jurusan CHAR(3)
)
BEGIN
    INSERT INTO MAHASISWA(NIM, Nama_Lengkap, Kode_Jurusan)
    VALUES (p_NIM, p_Nama_Lengkap, p_Kode_Jurusan);
END$$
DELIMITER ;

-- Cara memanggil
CALL DaftarkanMahasiswaBaru('1015', 'Fani Kurnia', 'TI');