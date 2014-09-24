#User Stories for Airbnb Clone

##Landlord
* As a landlord, I want to be able to create a uniquely named, secure landlord account and have my registration confirmed via email.
* As a landlord, I want to list my rental including rental description, address, rental rate, and miscellaneous requirements. I then want to be able to maintain or delete my listing.
* As a landlord, I want to optionally be able to upload photos of my rental.
* As a landlord, I want to keep track of the YTD and future reservations for my rental.
* As a landlord, I want to keep track of how much money I have received from rentals in the current year.
* As a landlord, I want to be able to rate and make comments about renters.
* As a landlord, I want to be able to respond to comments made about me and my rental.
* As a landlord, I want to be able to see the ratings and comments of others about renters.
* As a landlord, I want to compare my rates with other landlords' rates for similar properties in my city and in other cities.
* As a landlord, I want to receive and track payments from renters and issue warnings via email to renters whose payments are overdue.

##Renter
* As a renter, I want to be able to create a secure renter account and have my registration confirmed via email.
* As a renter, I want to see all rentals available in a city, including rates, addresses, and photos (if available). The display needs to have pagination so I can keep track of
* As a renter, I want to see all rentals available in a city for a given time period.
* As a renter, I want to see all rentals available in a city within a range of rental rates.
* As a renter, I want to be able to reserve a rental for a specific period of time. I also want to be able to cancel any reservation. If the reservation period has already begun, I want to be able to cancel the remainder of the reservation without having to pay.
* As a renter, I want to be able to pay my rent via a stored credit card, making either one-time or scheduled payments, and track the payments I have made.
* As a renter, I want to be able to rate and make comments about landlords and properties.
* As a renter, I want to be able to respond to comments made about me.
* As a renter, I want to be able to see the ratings and comments of others about landlords and properties.

##Models
* Rentals
* Users (STI for renters and landlords)
* Reservations
* Comments (polymorphic)

##Associations
* Landlords have_many Rentals, Rentals belong to Landlords
* Renters have_many Rentals through Reservations
* Reservations belong_to Rentals and belong_to Renters (join table with state)
* Reservations belong_to Landlords through Rentals
* Comments belong_to Renters, Landlords, and Rentals (polymorphic)
* Rental has_attached_file photo
* Users has_secure_password
