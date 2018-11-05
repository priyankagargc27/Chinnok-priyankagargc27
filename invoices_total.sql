SELECT i.[Total]
	,c.FirstName || ' ' || c.LastName [Customer Name]
	,i.BillingCountry
	,e.FirstName || ' ' || e.LastName [Sales Agent]
FROM Customer c
JOIN Employee e on e.EmployeeId = c.SupportRepId
JOIN Invoice i on i.CustomerId = c.CustomerId;