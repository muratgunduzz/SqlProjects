
-- 1. City ve Country Tablosu - Şehir ve Ülke İsimleri İçin LEFT JOIN
SELECT city.city, country.country
FROM city
LEFT JOIN country ON city.country_id = country.country_id;

-- 2. Customer ve Payment Tablosu - Payment_ID ve Customer Adı Soyadı İçin RIGHT JOIN
SELECT payment.payment_id, customer.first_name, customer.last_name
FROM customer
RIGHT JOIN payment ON customer.customer_id = payment.customer_id;

-- 3. Customer ve Rental Tablosu - Rental_ID ve Customer Adı Soyadı İçin FULL JOIN
SELECT rental.rental_id, customer.first_name, customer.last_name
FROM customer
FULL JOIN rental ON customer.customer_id = rental.customer_id;
