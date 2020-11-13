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
l2 = Location.create(:city=> "Austin", :state=> "Texas", :zip_code=> 77123)
l3 = Location.create(:city=> "San Antonio", :state=> "Texas", :zip_code=> 77456)
l4 = Location.create(:city=> "Dallas", :state=> "Texas", :zip_code=> 77789)

#Events
e1 = Event.create(:name=>"Rock Concert", :category=> "Music", :description=>"Linkin Park is playing", :time=>Time.new(2020, 9, 30, 13, 00), :img_url=>"", :location_id=>l1.id)
e2 = Event.create(:name=>"Rockets Vs Lakers", :category=> "Sports", :description=>"Finals Rockets vs Lakers", :time=>Time.new(2020, 9, 30, 13, 00), :img_url=>"", :location_id=>l1.id)
e3 = Event.create(:name=>"History Exibition", :category=> "Educational", :description=>"See the dinosaurs and their era", :time=>Time.new(2020, 9, 30, 13, 00), :img_url=>"", :location_id=>l1.id)
e4 = Event.create(:name=>"Comicon", :category=> "Recreational", :description=>"Houstons 5th ComiCon", :time=>Time.new(2020, 9, 30, 13, 00), :img_url=>"", :location_id=>l1.id)
e5 = Event.create(:name=>"Professionals Convention", :category=> "Professional", :description=>"Houstons 5th Professional Convention", :time=>Time.new(2020, 9, 30, 13, 00), :img_url=>"", :location_id=>l1.id)

#User
# u1 = User.create(:first_name=>"Adam", :last_name=> "Lambert", :password=>"5678")

#User Events
# ue1 = UserEvent.create(:user_id=>u1.id, :event_id=>e1.id)
