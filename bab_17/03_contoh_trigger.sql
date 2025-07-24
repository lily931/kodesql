-- Bab 17.3: Triggers (Contoh sintaks MySQL/MariaDB)
-- Pertama, buat tabel untuk log
CREATE TABLE LOG_PERUBAHAN_MAHASISWA (
    Id_Log INT AUTO_INCREMENT PRIMARY KEY,
    NIM_Mahasiswa CHAR(4),
    Info_Perubahan VARCHAR(255),
    Waktu_Perubahan TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Kedua, buat trigger-nya
DELIMITER $$
CREATE TRIGGER SetelahUpdateMahasiswa
AFTER UPDATE ON MAHASISWA
FOR EACH ROW
BEGIN
    INSERT INTO LOG_PERUBAHAN_MAHASISWA(NIM_Mahasiswa, Info_Perubahan)
    VALUES (OLD.NIM, CONCAT('Nama diubah dari ', OLD.Nama_Lengkap, ' menjadi ', NEW.Nama_Lengkap));
END$$
DELIMITER ;