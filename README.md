# WhereVeBetweenKullanimi
Sorgular NortwindTURKCE DB üzerinde oluşturulmuştur. 

DB için : https://github.com/Eftal1/NortwindTurkceDB




-- Select Sorgularında Where Şartı Yazmak

SELECT * FROM Personeller --tablosu ile işlem yapacağız. 

--Personeller tablosunda şehri London olan verileri listeyelim. 

SELECT * FROM Personeller WHERE Sehir = 'London'

--Personeller tablosunda bağlı çalıştığı kişi sayısı 5'ten küçük olanları listeyelim.

SELECT * FROM Personeller WHERE BagliCalistigiKisi <5

--AND Operatörü
--Personeller tablosunda şehri London ve Ülkesi UK olanları listeleyelim.
SELECT * FROM Personeller WHERE Sehir = 'London' AND Ulke = 'UK'

--Or Operatörü
--Personeller tablosunda UnvanEki 'Mr.' olan veya şehri 'Seattle' olan tüm personelleri listeyelim. 
SELECT * FROM Personeller WHERE UnvanEki = 'Mr.' OR Sehir = 'Seattle'

--Karışık Örnekler 
--Ado Robert Soyadı King olan personelin tüm bilgilerini çek
SELECT * FROM Personeller WHERE Adi = 'Robert' AND SoyAdi = 'King'

--PersonelID'si 5 olan personeli getirelim. 
SELECT * FROM Personeller WHERE PersonelID = 5

--PersonelID'si 5 ve 5'ten büyük olan tüm personelleri listeleyelim.
SELECT * FROM Personeller WHERE PersonelID >= 5

--	<> Eşit Değilse
--	= Eşitse 
--	<= Küçük ve Eşitse
--	>= Büyük ve eşitse 


--Fonksiyon Sonuçlarını Şart Olarak Kullanmak
--1993 Yılında işe başlayanlarını listeleme
SELECT * FROM Personeller WHERE YEAR(IseBaslamaTarihi) = 1993
--1992 Yılından sonra işe başlayanlarını listeleme
SELECT * FROM Personeller WHERE YEAR(IseBaslamaTarihi) > 1992
--Doğum günü ayın 29'u olmayan personelleri listeleyelim
SELECT * FROM Personeller WHERE DAY(DogumTarihi) <> 29
--Doğum yılı 1950 ile 1965 yılları arasında olan personelleri listeleyelim. 
SELECT * FROM Personeller WHERE YEAR(DogumTarihi) > 1950 AND YEAR(DogumTarihi) < 1965
--Veya
SELECT * FROM Personeller WHERE DogumTarihi  BETWEEN '1950-01-01' AND '1965-12-31'
--Yaşadığı şehrin London, Tacoma ve Kirkland olan personellerin adını listeleylim. 
SELECT * FROM Personeller WHERE Sehir = 'London' OR Sehir = 'Tacoma' OR Sehir = 'Kirkland'
--Veya
SELECT * FROM Personeller WHERE Sehir IN ('London','Tacoma','Kirkland')


--BETWEEN Komutu

--Doğum yılı 1950 ile 1965 yılları arasında olan personelleri listeleyelim. 
SELECT * FROM Personeller WHERE YEAR(DogumTarihi) BETWEEN 1950 AND 1965
--Veya
SELECT * FROM Personeller WHERE DogumTarihi  BETWEEN '1950-01-01' AND '1965-12-31'
--Yaşadığı şehrin London, Tacoma ve Kirkland olan personellerin adını listeleylim.
--In Komutu
SELECT * FROM Personeller WHERE Sehir IN ('London','Tacoma','Kirkland')
