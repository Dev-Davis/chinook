select FirstName + ' ' + LastName as FullName, CustomerId
from Customer
where Country != 'USA'

