# SqlProjects
#### Project 1

-- 'A' ile başlayıp 'a' ile biten ülke isimleri
SELECT country FROM country WHERE country LIKE 'A%a';

-- En az 6 karakterli ve 'n' ile biten ülke isimleri
SELECT country FROM country WHERE LENGTH(country) >= 6 AND country LIKE '%n';

-- En az 4 adet 'T' içeren film isimleri
SELECT title FROM film WHERE LENGTH(REPLACE(LOWER(title), 't', '')) <= LENGTH(title) - 4;

-- 'C' ile başlayıp, uzunluğu 90’dan büyük ve rental_rate’i 2.99 olan filmler
SELECT * FROM film WHERE title LIKE 'C%' AND length > 90 AND rental_rate = 2.99;

#### Project 2

-- 1. film tablosunda replacement_cost sütunundaki farklı değerleri sıralama
SELECT DISTINCT replacement_cost 
FROM film 
ORDER BY replacement_cost;

-- 2. film tablosunda replacement_cost sütunundaki farklı kaç tane veri var?
SELECT COUNT(DISTINCT replacement_cost) AS unique_replacement_cost_count 
FROM film;

-- 3. 'T' ile başlayan ve rating değeri 'G' olan film isimlerinin sayısı
SELECT COUNT(*) AS count_of_T_films 
FROM film 
WHERE title LIKE 'T%' AND rating = 'G';

-- 4. country tablosunda 5 karakter uzunluğundaki ülke isimlerinin sayısı
SELECT COUNT(*) AS count_of_5_char_countries 
FROM country 
WHERE LENGTH(country) = 5;

-- 5. city tablosundaki şehir isimlerinden 'R' veya 'r' ile biten kaç tane var?
SELECT COUNT(*) AS count_of_cities_ending_with_R 
FROM city 
WHERE city ILIKE '%r';

#### Project 3

-- 1. 'n' karakteri ile biten en uzun 5 filmi sıralama
SELECT title, length 
FROM film 
WHERE title LIKE '%n' 
ORDER BY length DESC 
LIMIT 5;

-- 2. 'n' karakteri ile biten en kısa ikinci 5 filmi (6,7,8,9,10) sıralama
SELECT title, length 
FROM film 
WHERE title LIKE '%n' 
ORDER BY length ASC 
OFFSET 5 
LIMIT 5;

-- 3. customer tablosunda last_name'e göre azalan sıralama yapıp store_id = 1 koşulu ile ilk 4 veriyi getirme
SELECT customer_id, first_name, last_name, store_id 
FROM customer 
WHERE store_id = 1 
ORDER BY last_name DESC 
LIMIT 4;

#### Project 4

-- 1. film tablosundaki rental_rate değerlerinin ortalamasını hesapla
SELECT AVG(rental_rate) AS average_rental_rate 
FROM film;

-- 2. 'C' karakteri ile başlayan kaç film var?
SELECT COUNT(*) AS count_of_C_films 
FROM film 
WHERE title LIKE 'C%';

-- 3. rental_rate = 0.99 olan en uzun filmin süresi kaç dakika?
SELECT MAX(length) AS longest_film_with_099_rental 
FROM film 
WHERE rental_rate = 0.99;

-- 4. uzunluğu 150 dakikadan büyük olan filmlerde kaç farklı replacement_cost değeri var?
SELECT COUNT(DISTINCT replacement_cost) AS unique_replacement_cost_count 
FROM film 
WHERE length > 150;

#### Project 5

-- 1. film tablosundaki filmleri rating değerlerine göre gruplama
SELECT rating, COUNT(*) AS film_count 
FROM film 
GROUP BY rating 
ORDER BY film_count DESC;

-- 2. replacement_cost sütununa göre grupladığımızda, film sayısı 50’den fazla olan replacement_cost değerleri ve film sayıları
SELECT replacement_cost, COUNT(*) AS film_count 
FROM film 
GROUP BY replacement_cost 
HAVING COUNT(*) > 50 
ORDER BY film_count DESC;

-- 3. store_id değerlerine karşılık gelen müşteri sayıları
SELECT store_id, COUNT(*) AS customer_count 
FROM customer 
GROUP BY store_id 
ORDER BY customer_count DESC;

-- 4. country_id sütununa göre şehirleri gruplama ve en fazla şehir barındıran country_id bilgisini getirme
SELECT country_id, COUNT(*) AS city_count 
FROM city 
GROUP BY country_id 
ORDER BY city_count DESC 
LIMIT 1;
