select 
			count(o.order_id) as qtd_vendas
			,case when s.store_name isnull then 'Loja não encontrada' else s.store_name end as nme_loja
			,b.brand_name       as marca
from	    orders o        (NOLOCK)
inner join  orders_items oi (NOLOCK) on o.order_id	  = oi.order_id
inner join  stores s        (NOLOCK) on o.store_id	  = s.store_id     
inner join  products p      (NOLOCK) on oi.product_id = p.product_id
inner join  brands   b      (NOLOCK) on p.brand_id    = b.brand_id
where       b.brand_name = 'Brigatta'	
group by  
			case when s.store_name isnull then 'Loja não encontrada' else store_name end
			,b.brand_name