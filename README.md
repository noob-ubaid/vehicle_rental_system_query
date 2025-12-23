this is the answer of the first query:
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
<p>Explanation : At first i select the bookings table. Then i join the bookings table with users table and give a condition like if b.user_id is equal  to u.user_id. Not it will merge the table
 based on the condition. After that, I did the same things again. I use Join clause to merge the merged table with vehicles table with this condition if b.vehicle_id = v.vehicle_id.
</p>
