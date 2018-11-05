select e.FirstName ||''|| e.LastName as "Sales Agent" ,i.* from Customer c
JOIN Employee e on e.EmployeeId = c.SupportRepId
Join Invoice i on i.CustomerId = c.CustomerId;