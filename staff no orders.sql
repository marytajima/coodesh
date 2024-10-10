select
		    concat(firstname,' ',last_name) as nme_vendedor (NOLOCK),
			s.staff_id                      as cod_vendedor (NOLOCK)
from        staffs s
where       s.staff_id not in (select o.staff_id from orders o)