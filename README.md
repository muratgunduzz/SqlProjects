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
