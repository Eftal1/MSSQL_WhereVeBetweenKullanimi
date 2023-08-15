

-- Select Sorgularýnda Where Þartý Yazmak

SELECT * FROM Personeller --tablosu ile iþlem yapacaðýz. 

--Personeller tablosunda þehri London olan verileri listeyelim. 

SELECT * FROM Personeller WHERE Sehir = 'London'

--Personeller tablosunda baðlý çalýþtýðý kiþi sayýsý 5'ten küçük olanlarý listeyelim.

SELECT * FROM Personeller WHERE BagliCalistigiKisi <5

--AND Operatörü
--Personeller tablosunda þehri London ve Ülkesi UK olanlarý listeleyelim.
SELECT * FROM Personeller WHERE Sehir = 'London' AND Ulke = 'UK'

--Or Operatörü
--Personeller tablosunda UnvanEki 'Mr.' olan veya þehri 'Seattle' olan tüm personelleri listeyelim. 
SELECT * FROM Personeller WHERE UnvanEki = 'Mr.' OR Sehir = 'Seattle'

--Karýþýk Örnekler 
--Ado Robert Soyadý King olan personelin tüm bilgilerini çek
SELECT * FROM Personeller WHERE Adi = 'Robert' AND SoyAdi = 'King'

--PersonelID'si 5 olan personeli getirelim. 
SELECT * FROM Personeller WHERE PersonelID = 5

--PersonelID'si 5 ve 5'ten büyük olan tüm personelleri listeleyelim.
SELECT * FROM Personeller WHERE PersonelID >= 5

--	<> Eþit Deðilse
--	= Eþitse 
--	<= Küçük ve Eþitse
--	>= Büyük ve eþitse 


--Fonksiyon Sonuçlarýný Þart Olarak Kullanmak
--1993 Yýlýnda iþe baþlayanlarýný listeleme
SELECT * FROM Personeller WHERE YEAR(IseBaslamaTarihi) = 1993
--1992 Yýlýndan sonra iþe baþlayanlarýný listeleme
SELECT * FROM Personeller WHERE YEAR(IseBaslamaTarihi) > 1992
--Doðum günü ayýn 29'u olmayan personelleri listeleyelim
SELECT * FROM Personeller WHERE DAY(DogumTarihi) <> 29
--Doðum yýlý 1950 ile 1965 yýllarý arasýnda olan personelleri listeleyelim. 
SELECT * FROM Personeller WHERE YEAR(DogumTarihi) > 1950 AND YEAR(DogumTarihi) < 1965
--Veya
SELECT * FROM Personeller WHERE DogumTarihi  BETWEEN '1950-01-01' AND '1965-12-31'
--Yaþadýðý þehrin London, Tacoma ve Kirkland olan personellerin adýný listeleylim. 
SELECT * FROM Personeller WHERE Sehir = 'London' OR Sehir = 'Tacoma' OR Sehir = 'Kirkland'
--Veya
SELECT * FROM Personeller WHERE Sehir IN ('London','Tacoma','Kirkland')


--Between Komutu

--Doðum yýlý 1950 ile 1965 yýllarý arasýnda olan personelleri listeleyelim. 
SELECT * FROM Personeller WHERE YEAR(DogumTarihi) Between 1950 AND 1965
--Veya
SELECT * FROM Personeller WHERE DogumTarihi  BETWEEN '1950-01-01' AND '1965-12-31'
--Yaþadýðý þehrin London, Tacoma ve Kirkland olan personellerin adýný listeleylim.
--In Komutu
SELECT * FROM Personeller WHERE Sehir IN ('London','Tacoma','Kirkland')