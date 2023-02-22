# patika.dev_sql_homework

-- Ödev 12
-- Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.



-- 1-film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?

-- Cevap 1-)
Select count(*) from film 
where length>any 
(Select avg(length) from film);


-- 2-film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?

-- Cevap 2-)
Select count(*) from film
where rental_rate=
(Select max(rental_rate) from film);


-- 3-film tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.

-- Cevap 3-)
Select * from film
where rental_rate=(Select min(rental_rate) from film) and 
replacement_cost=(Select min(replacement_cost) from film);


-- 4-payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.

-- Cevap 4-)
Select c.customer_id, c.first_name, COUNT(*) from payment p
Inner Join customer c ON p.customer_id = c.customer_id
Group By c.customer_id
Order By COUNT(*) DESC;

