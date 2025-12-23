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

-- second query
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

--   third query 
select
  *
from
  vehicles
where
type
  = 'car'
  and status = 'available'


  -- fourth query
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