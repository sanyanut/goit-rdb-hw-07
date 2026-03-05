use mydb;

-- 1
SELECT id, date, YEAR(date) as year, MONTH(date) as month, DAY(date) as day
from orders;

-- 2
SELECT id, date, DATE_ADD(date, INTERVAL 1 DAY) as date_plus_day
from orders;

-- 3
SELECT id, date, UNIX_TIMESTAMP(date) as date_as_timestamp
from orders;

-- 4
SELECT COUNT(*)
FROM orders
WHERE date BETWEEN '1996-07-10 00:00:00' AND '1996-10-08 00:00:00';

-- 5
SELECT id, date, JSON_OBJECT('id', id, 'date', date) as date_in_json
from orders;