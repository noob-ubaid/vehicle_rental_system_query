## this is the answer of the first query:
```sql
select
  b.booking_id,
  u.name as customer_name,
  v.vehicle_name as vehicle_name,
  b.start_date,
  b.end_date,
  b.status
from
  bookings as b
  join users as u on b.user_id = u.user_id
  join vehicles as v on b.vehicle_id = v.vehicle_id
```
Explanation : At first i select the bookings table. Then i join the bookings table with users table and give a condition like if b.user_id is equal  to u.user_id. Not it will merge the table
 based on the condition. After that, I did the same things again. I use Join clause to merge the merged table with vehicles table with this condition if b.vehicle_id = v.vehicle_id.


## this is the answer of the second query:
```sql
select
  v.vehicle_id,
  v.vehicle_name,
  v.type,
  v.model,
  v.registration_number,
  v.rental_price,
  v.status
from
  vehicles as v
where
  not exists (
    select
      *
    from
      bookings as b
    where
      b.vehicle_id = v.vehicle_id
  )
```
Explanation : At first, I select what I need to show from the vehicles table. Then I use a subquery with the not exists condition b.vehicle_id = v.vehicle_id. It will give the results that do not exist in the bookings table.


## this is the answer of the third query:
```sql
select
  *
from
  vehicles
where
type
  = 'car'
  and status = 'available'

```

Explanation : At first, I select everything from the vehicles table using *. Then I set a condition using the WHERE clause: if type = 'car' and status = 'available'. This code will return the vehicles whose type is car and status is available.



## this is the answer of the fourth query:
```sql
select
  v.vehicle_name,
  count(b.booking_id)
from
  vehicles as v
  join bookings as b on v.vehicle_id = b.vehicle_id
group by
  v.vehicle_name
having
  count(b.booking_id) > 2
```
Explanation : At first, I select what I need to show in the result from the vehicles table. Then I merge the vehicles table with the bookings table using the condition v.vehicle_id = b.vehicle_id. After that, I group the results using the GROUP BY clause and set a condition with HAVING: count(b.booking_id) > 2. This code will return the vehicles that have more than 2 bookings.
