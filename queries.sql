-- first query solved
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