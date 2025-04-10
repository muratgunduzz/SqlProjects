
-- 1. TABLO OLUŞTURMA
CREATE TABLE employee (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    birthday DATE,
    email VARCHAR(100)
);

-- 2. 50 ADET VERİ EKLEME (Mockaroo'dan alınmış sahte veriler)
INSERT INTO employee (name, birthday, email) VALUES
('Eren Yılmaz', '1985-12-01', 'eren.yilmaz@example.com'),
('Selin Demir', '1990-03-22', 'selin.demir@example.com'),
('Ahmet Koç', '1982-08-14', 'ahmet.koc@example.com'),
('Zeynep Aslan', '1995-01-30', 'zeynep.aslan@example.com'),
('Mehmet Şahin', '1979-07-17', 'mehmet.sahin@example.com'),
('Ayşe Kaplan', '1992-11-05', 'ayse.kaplan@example.com'),
('Burak Özkan', '1988-04-09', 'burak.ozkan@example.com'),
('Elif Arslan', '1993-09-28', 'elif.arslan@example.com'),
('Kemal Yıldız', '1980-06-16', 'kemal.yildiz@example.com'),
('Hülya Korkmaz', '1986-02-11', 'hulya.korkmaz@example.com'),
('Okan Erdem', '1984-10-23', 'okan.erdem@example.com'),
('Buse Tan', '1997-05-02', 'buse.tan@example.com'),
('Mert Güneş', '1983-03-15', 'mert.gunes@example.com'),
('Nazlı Aydın', '1991-07-08', 'nazli.aydin@example.com'),
('Tolga Yavuz', '1977-12-25', 'tolga.yavuz@example.com'),
('Gizem Ateş', '1990-06-30', 'gizem.ates@example.com'),
('Cem Uysal', '1987-08-03', 'cem.uysal@example.com'),
('Aslı Soylu', '1994-01-19', 'asli.soylu@example.com'),
('Can Demirtaş', '1981-09-13', 'can.demirtas@example.com'),
('Derya Kılıç', '1996-11-29', 'derya.kilic@example.com'),
('Halil Uzun', '1989-03-10', 'halil.uzun@example.com'),
('Melis Karaca', '1993-04-27', 'melis.karaca@example.com'),
('Yiğit Eren', '1980-05-22', 'yigit.eren@example.com'),
('Sibel Uçar', '1985-10-11', 'sibel.ucar@example.com'),
('Emre Baş', '1992-02-07', 'emre.bas@example.com'),
('Pelin Öztürk', '1990-01-04', 'pelin.ozturk@example.com'),
('Tuncay Güler', '1983-07-18', 'tuncay.guler@example.com'),
('Esra Aksoy', '1994-09-09', 'esra.aksoy@example.com'),
('Cihan Bal', '1978-06-03', 'cihan.bal@example.com'),
('Nihal Özen', '1986-12-20', 'nihal.ozen@example.com'),
('Volkan Çelik', '1991-08-31', 'volkan.celik@example.com'),
('Seda Arı', '1995-10-06', 'seda.ari@example.com'),
('Alper Duru', '1987-01-14', 'alper.duru@example.com'),
('Melek Yiğit', '1982-03-01', 'melek.yigit@example.com'),
('Baran Efe', '1993-12-11', 'baran.efe@example.com'),
('Duygu Sarı', '1990-04-04', 'duygu.sari@example.com'),
('Serkan Tuna', '1984-05-09', 'serkan.tuna@example.com'),
('Hilal Acar', '1996-06-28', 'hilal.acar@example.com'),
('Oğuz Kaan', '1979-09-15', 'oguz.kaan@example.com'),
('Berna Kaya', '1991-02-18', 'berna.kaya@example.com'),
('Deniz Güner', '1988-11-06', 'deniz.guner@example.com'),
('Onur Ekinci', '1980-08-27', 'onur.ekinci@example.com'),
('İlayda Aydın', '1994-07-13', 'ilayda.aydin@example.com'),
('Faruk Demirtaş', '1986-01-21', 'faruk.demirtas@example.com'),
('Sami Alkan', '1983-10-10', 'sami.alkan@example.com'),
('Bahar İnce', '1995-05-16', 'bahar.ince@example.com'),
('Ufuk Şimşek', '1981-12-03', 'ufuk.simsek@example.com'),
('Yasemin Polat', '1987-06-20', 'yasemin.polat@example.com'),
('Koray Bayraktar', '1978-04-01', 'koray.bayraktar@example.com');

-- 3. UPDATE SORGULARI
UPDATE employee SET email = 'updated1@example.com' WHERE name = 'Eren Yılmaz';
UPDATE employee SET name = 'Yeni İsim' WHERE email = 'zeynep.aslan@example.com';
UPDATE employee SET email = 'birthday.update@example.com' WHERE birthday = '1992-11-05';
UPDATE employee SET name = 'ID Güncelleme' WHERE id = 10;
UPDATE employee SET birthday = '2000-01-01' WHERE email = 'mert.gunes@example.com';

-- 4. DELETE SORGULARI
DELETE FROM employee WHERE name = 'Pelin Öztürk';
DELETE FROM employee WHERE email = 'burak.ozkan@example.com';
DELETE FROM employee WHERE birthday = '1981-12-03';
DELETE FROM employee WHERE id = 20;
DELETE FROM employee WHERE name ILIKE '%Kaan%';
