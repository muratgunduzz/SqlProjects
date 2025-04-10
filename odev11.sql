-- 1. Tüm Verileri Sıralama (actor ve customer tablolarındaki tüm first_name sütunlarını sıralama)
SELECT actor.first_name
FROM actor
UNION
SELECT customer.first_name
FROM customer
ORDER BY first_name;

-- 2. Kesişen Verileri Sıralama (actor ve customer tablolarındaki kesişen first_name verilerini sıralama)
SELECT actor.first_name
FROM actor
INTERSECT
SELECT customer.first_name
FROM customer
ORDER BY first_name;

-- 3. İlk Tabloda Bulunan Ancak İkinci Tabloda Bulunmayan Verileri Sıralama (actor tablosunda olup customer tablosunda olmayan first_name değerlerini sıralama)
SELECT actor.first_name
FROM actor
EXCEPT
SELECT customer.first_name
FROM customer
ORDER BY first_name;

-- 4. Tekrarlayan Veriler İçin Sıralama (actor ve customer tablolarındaki tekrarlayan first_name verilerini sıralama)
SELECT actor.first_name
FROM actor
INTERSECT
SELECT customer.first_name
FROM customer
ORDER BY first_name;

-- 5. Tekrarlayan Veriler İçin Sıralama (UNION ALL kullanarak tekrar eden verileri sıralama)
SELECT actor.first_name
FROM actor
UNION ALL
SELECT customer.first_name
FROM customer
ORDER BY first_name;
