select c.custumer_id 
	   ,c.first_name
	   ,c.last_name
from   customers c (NOLOCK)
where  c.customer_id not in (select customer_id from orders (NOLOCK))