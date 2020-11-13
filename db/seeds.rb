# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Location.destroy_all
Event.destroy_all
User.destroy_all
UserEvent.destroy_all
#Locations
l1 = Location.create(:city=> "Houston", :state=> "Texas", :zip_code=> 77004)
l2 = Location.create(:city=> "Austin", :state=> "Texas", :zip_code=> 78704)
l3 = Location.create(:city=> "San Antonio", :state=> "Texas", :zip_code=> 78212)
l4 = Location.create(:city=> "Dallas", :state=> "Texas", :zip_code=> 75226)

#Events
e1 = Event.create(:name=>"Austin Silent Disco", :category=> "Music", :description=>"3 LIVE DJs spinning your favorite decade-spanning hits all night long!!!

It's a dance party in your ears - AND NO WHERE ELSE!

The Highball is always a rockin' time and we always hit capacity! COME EARLY to secure your spot!

CHANNELS:

||70s||80s||90s & 00s||

A silent disco is an event where you dance to music being transmitted via wireless headphones, and get to switch channels to different DJ's! We'll have three styles of music (all from different decades!) perfect for you to find the dance party of your dreams!

If you're not wearing headphones, you won't hear any music BUT DON'T WORRY: ALL HEADPHONES PROVIDED at no cost. All you need is your ID (21+)!

Add us on FB and Instagram for updated details

https://www.facebook.com/AustinSilentDisco/

https://www.instagram.com/austinsilentdisco", :time=>Time.new(2020, 11, 14, 20, 00), :img_url=>"https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F95900297%2F295615200953%2F1%2Foriginal.20200308-192153?h=2000&w=720&auto=format%2Ccompress&q=75&sharp=10&s=dfc17baa9114d73621f7d1d19fd433b9", :location_id=>l2.id)
e2 = Event.create(:name=>"SAISD Football - Burbank Bulldogs vs Highlands Owls", :category=> "Sports", :description=>"All Tickets will be sold On-Line Only. There will be no tickets sold at the gate.
All tickets will go on-sale at 12:01 AM on the Sunday before the contest. Parents of the participants of the contest will have the first opportunity to purchase their tickets in advance. The parents will receive a code from their students' coach, sponsor, or teacher in order to purchase advanced tickets. These codes will be valid until 4:00 PM the Wednesday prior to the game. Once the option period to purchase advanced tickets has expired, the remaining tickets will be sold on a first come, first served basis until the event is sold out or the game has ended.

SAISD Clear Bag and No Re-Entry Policies will be strictly enforced.
NO PASSES will be accepted at the gate. All patrons will need a ticket to gain admittance to the contest. Scouts, faculty, SAISD Staff, senior citizens and media groups will need to contact the athletic office to receive their credentials via email.

Each purchaser has the option to purchase a maximum combination of (4) tickets. No refunds will be issued if game is canceled due to weather or COVID 19 cases.

Due to COVID 19, the SAISD Athletic Facilities will be restricted to 50% capacity, so seating will be limited. UIL Guidelines for Game, Contest, and Event Management will be followed:https://www.uiltexas.org/policy/covid-19/2020-2021-uil-covid-19-risk-mitigation-guidelines

Spectators must complete a self-check for COVID-19 symptoms prior to arriving at the stadium. When purchasing your ticket and entering district venues, you are attesting that you are COVID-19 symptom-free. Spectators school age and up must wear face coverings with these exemptions: Executive order 7.2.2020. SAISD Policy requires all school-aged children to wear a face-covering at all times while attending the sporting contest.

No reserved seating. All Patrons must sit in the section indicated on their tickets and areas designated for fan seating. Corridors, breezeways, and walkways must be clear at all times. Loitering, standing, or congregating in passageways will not be permitted.

All seating will be first come, first served. Spectators must sit in groups of no more than 10 as long as they are from the same household or traveled to the contest together. All spectators shall maintain social distancing in the bleachers.

Senior Citizens (60 and Up) with a San Antonio Area Senior Citizen's Pass will be allowed in free of charge until seating capacity is reached Tickets will be “sold” to Senior citizens through the Athletic Office. Senior Citizens must call the athletic office at 210-554-2655 to order their tickets. Senior Citizens must present their ticket and Senior Citizen Cards at the gate in order to gain entrance into the stadium.", :time=>Time.new(2020, 11, 13, 20, 00), :img_url=>"https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F114946841%2F370327970865%2F1%2Foriginal.20201016-214649?w=800&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C0%2C2160%2C1080&s=6416917708484686e78dbc416a0ccb3a", :location_id=>l3.id)

e3 = Event.create(:name=>"Hookah•Food•Drinks•Music", :category=> "Food and Drink", :description=>"
About this Event
Houston # 1 SaturdayDay Party & Night Party!

Day Party & Night Party

DAY PARTY: 2PM - 8PM

NIGHT PARTY: 8PM - 2AM

The Ultimate Saturday Vibe!

Come Enjoy our full delicious food menu, bottomless mimosas, and hookah with friends!

Featuring Houston’s Top DJ’s & socialites!

EVERYBODY FREE ALL DAY

TABLE/BOTTLES INFO:

ALL TABLES STARTING @ $50.00

BIRTHDAY DISCOUNTS AVAILABLE

EVERY TABLE COMES WITH 8 FREE GUEST PASSES

BOTTLES & PRICES : $225

(including Tax & Gratuity)

HOOKAH: $25

(all flavors available)

CONTACT 346.818.9814

FOR TABLE & SECTIONS RESERVATIONS

", :time=>Time.new(2020, 11, 15, 20, 00), :img_url=>"https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F109035037%2F70368313113%2F1%2Foriginal.20200819-231346?w=800&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C55%2C960%2C480&s=09197eff41aa110dd4364fd5c81ddd21", :location_id=>l1.id)
e4 = Event.create(:name=>"Nero (Dj set) at It'll Do Club", :category=> "Music", :description=>"Nero (Dj set) at It'll Do Club", :time=>Time.new(2020, 11, 19, 21, 00), :img_url=>"https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F116044137%2F360334782811%2F1%2Foriginal.20201027-234709?w=800&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C0%2C2160%2C1080&s=7fa3e567bcccdb25b6cbc5662f87c254", :location_id=>l4.id)

#User
u1 = User.create(:first_name=>"Adam", :last_name=> "Lambert", :username=> "adam_lambert", :password=> "123")

