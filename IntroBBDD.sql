-- 1. Vuelos con status "On Time"
SELECT flight_id, status
FROM flights
WHERE status = 'On Time';


-- 2. Reservas con total_amount > 1.000.000 rublos
SELECT *
FROM bookings
WHERE total_amount > 1000000;


-- 3. Datos de los modelos de aviones (aircrafts_data)
SELECT *
FROM aircrafts_data;

-- 4. Identificadores de vuelos con Boeing 737 (modelo 733)
SELECT flight_id
FROM flights
WHERE aircraft_code = '733';


-- 5. Tickets comprados por personas llamadas Irina
SELECT *
FROM tickets
WHERE passenger_name LIKE 'Irina%';
s

-- 6. Ciudades con más de un aeropuerto
SELECT city, COUNT(*) AS airport_count
FROM airports
GROUP BY city
HAVING COUNT(*) > 1;


-- 7. Número de vuelos por modelo de avión
SELECT aircraft_code, COUNT(*) AS flight_count
FROM flights
GROUP BY aircraft_code;


-- 8. Reservas con más de un billete
SELECT book_ref, COUNT(*) AS ticket_count
FROM tickets
GROUP BY book_ref
HAVING COUNT(*) > 1;


-- 9. Vuelos con retraso de salida superior a una hora
SELECT flight_id,
       scheduled_departure,
       actual_departure,
       (actual_departure - scheduled_departure)
FROM flights
WHERE (actual_departure - scheduled_departure) > INTERVAL '1 hour';
