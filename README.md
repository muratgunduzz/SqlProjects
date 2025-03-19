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
