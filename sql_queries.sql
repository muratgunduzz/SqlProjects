
-- 1. City ve Country Tablosu - Şehir ve Ülke İsimleri İçin INNER JOIN
SELECT city.city, country.country
FROM city
INNER JOIN country ON city.country_id = country.country_id;

-- 2. Customer ve Payment Tablosu - Payment_ID ve Customer Adı Soyadı İçin INNER JOIN
SELECT payment.payment_id, customer.first_name, customer.last_name
FROM customer
INNER JOIN payment ON customer.customer_id = payment.customer_id;

-- 3. Customer ve Rental Tablosu - Rental_ID ve Customer Adı Soyadı İçin INNER JOIN
SELECT rental.rental_id, customer.first_name, customer.last_name
FROM customer
INNER JOIN rental ON customer.customer_id = rental.customer_id;
