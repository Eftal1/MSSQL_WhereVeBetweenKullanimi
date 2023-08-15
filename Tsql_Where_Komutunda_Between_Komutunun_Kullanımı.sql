

-- Select Sorgular�nda Where �art� Yazmak

SELECT * FROM Personeller --tablosu ile i�lem yapaca��z. 

--Personeller tablosunda �ehri London olan verileri listeyelim. 

SELECT * FROM Personeller WHERE Sehir = 'London'

--Personeller tablosunda ba�l� �al��t��� ki�i say�s� 5'ten k���k olanlar� listeyelim.

SELECT * FROM Personeller WHERE BagliCalistigiKisi <5

--AND Operat�r�
--Personeller tablosunda �ehri London ve �lkesi UK olanlar� listeleyelim.
SELECT * FROM Personeller WHERE Sehir = 'London' AND Ulke = 'UK'

--Or Operat�r�
--Personeller tablosunda UnvanEki 'Mr.' olan veya �ehri 'Seattle' olan t�m personelleri listeyelim. 
SELECT * FROM Personeller WHERE UnvanEki = 'Mr.' OR Sehir = 'Seattle'

--Kar���k �rnekler 
--Ado Robert Soyad� King olan personelin t�m bilgilerini �ek
SELECT * FROM Personeller WHERE Adi = 'Robert' AND SoyAdi = 'King'

--PersonelID'si 5 olan personeli getirelim. 
SELECT * FROM Personeller WHERE PersonelID = 5

--PersonelID'si 5 ve 5'ten b�y�k olan t�m personelleri listeleyelim.
SELECT * FROM Personeller WHERE PersonelID >= 5

--	<> E�it De�ilse
--	= E�itse 
--	<= K���k ve E�itse
--	>= B�y�k ve e�itse 


--Fonksiyon Sonu�lar�n� �art Olarak Kullanmak
--1993 Y�l�nda i�e ba�layanlar�n� listeleme
SELECT * FROM Personeller WHERE YEAR(IseBaslamaTarihi) = 1993
--1992 Y�l�ndan sonra i�e ba�layanlar�n� listeleme
SELECT * FROM Personeller WHERE YEAR(IseBaslamaTarihi) > 1992
--Do�um g�n� ay�n 29'u olmayan personelleri listeleyelim
SELECT * FROM Personeller WHERE DAY(DogumTarihi) <> 29
--Do�um y�l� 1950 ile 1965 y�llar� aras�nda olan personelleri listeleyelim. 
SELECT * FROM Personeller WHERE YEAR(DogumTarihi) > 1950 AND YEAR(DogumTarihi) < 1965
--Veya
SELECT * FROM Personeller WHERE DogumTarihi  BETWEEN '1950-01-01' AND '1965-12-31'
--Ya�ad��� �ehrin London, Tacoma ve Kirkland olan personellerin ad�n� listeleylim. 
SELECT * FROM Personeller WHERE Sehir = 'London' OR Sehir = 'Tacoma' OR Sehir = 'Kirkland'
--Veya
SELECT * FROM Personeller WHERE Sehir IN ('London','Tacoma','Kirkland')


--Between Komutu

--Do�um y�l� 1950 ile 1965 y�llar� aras�nda olan personelleri listeleyelim. 
SELECT * FROM Personeller WHERE YEAR(DogumTarihi) Between 1950 AND 1965
--Veya
SELECT * FROM Personeller WHERE DogumTarihi  BETWEEN '1950-01-01' AND '1965-12-31'
--Ya�ad��� �ehrin London, Tacoma ve Kirkland olan personellerin ad�n� listeleylim.
--In Komutu
SELECT * FROM Personeller WHERE Sehir IN ('London','Tacoma','Kirkland')