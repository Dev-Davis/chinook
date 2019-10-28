Update Customer
	set FirstName = 'Isaac',
		LastName = 'Hanson'
		output inserted.*
	where SupportRepId is null
	and CustomerId between 60 and 65

	select * from Customer