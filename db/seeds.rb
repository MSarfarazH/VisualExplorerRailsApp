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
l1 = Location.create(:city=> "Houston", :state=> "Texas", :zip_code=> 77888)

#Events
e1 = Event.create(:name=>"Rock Concert", :category=> "Music", :description=>"Linkin Park is playing", :location_id=>l1.id)

#User
u1 = User.create(:first_name=>"Adam", :last_name=> "Lambert")

#User Events
ue1 = UserEvent.create(:user_id=>u1.id, :event_id=>e1.id)
