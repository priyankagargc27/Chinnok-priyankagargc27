

select MediaTypePurchase.name, max(MediaTypePurchase.PurchaseCount) from 

(
select mt.name,sum(il.quantity) as purchaseCount from MediaType mt 
join track t on mt.MediaTypeId = t.MediaTypeId
join InvoiceLine il on il.TrackId  = t.TrackId
group by mt.name
order  by purchaseCount desc
) MediaTypePurchase