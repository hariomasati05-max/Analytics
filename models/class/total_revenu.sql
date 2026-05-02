select
    orderid,
    sum(amount) as total_amount
from raw.stripe.payment
group by orderid
Order by orderid asc
