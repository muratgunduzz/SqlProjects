-- 1. Film Tablosunda Uzunluğu Ortalama Film Uzunluğundan Fazla Olan Filmleri Saymak
SELECT COUNT(*) 
FROM film
WHERE length > (SELECT AVG(length) FROM film);

-- 2. Film Tablosunda En Yüksek rental_rate Değerine Sahip Olan Film Sayısını Bulmak
SELECT COUNT(*)
FROM film
WHERE rental_rate = (SELECT MAX(rental_rate) FROM film);

-- 3. Film Tablosunda En Düşük rental_rate ve En Düşük replacement_cost Değerlerine Sahip Filmleri Sıralamak
SELECT title, rental_rate, replacement_cost
FROM film
WHERE rental_rate = (SELECT MIN(rental_rate) FROM film)
  AND replacement_cost = (SELECT MIN(replacement_cost) FROM film);

-- 4. Payment Tablosunda En Fazla Alışveriş Yapan Müşterileri (Customer) Sıralamak
SELECT customer_id, COUNT(*) AS purchase_count
FROM payment
GROUP BY customer_id
ORDER BY purchase_count DESC;
