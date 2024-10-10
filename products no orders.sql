select 
			p.product_id		as cod_produto
			,p.product_name	as nme_produto
			,b.brand_name		as nme_marca
			,c.category_name	as nme_catgoria
from 
			products   p  (NOLOCK)
left join   brands     b  (NOLOCK) on p.brand_id    = b.brand_id
left join   categories c  (NOLOCK) on p.category_id = c.category_id
where       p.product_id not in (select    oi.product_id 
								   from    order_items oi (NOLOCK))
								


