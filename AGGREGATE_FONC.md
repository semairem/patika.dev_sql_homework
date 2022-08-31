# patika.dev_sql_homework

film tablosunda bulunan rental_rate sütunundaki değerlerin ortalaması nedir?
film tablosunda bulunan filmlerden kaç tanesi 'C' karakteri ile başlar?
film tablosunda bulunan filmlerden rental_rate değeri 0.99 a eşit olan en uzun (length) film kaç dakikadır?
film tablosunda bulunan filmlerin uzunluğu 150 dakikadan büyük olanlarına ait kaç farklı replacement_cost değeri vardır?


1.
  SELECT AVG(rental_rate)
  FROM film;
  
2.
  SELECt COUNT(title) FROM film WHERE title LIKE 'C%' ;
  
3.
  SELECT MAX(lenght) FROM film WHERE rental_rate = 0.99;
  
4.
  SELECT COUNT(DISTINCE replacement_cost) FROM film WHERE lenght > 150;
  
