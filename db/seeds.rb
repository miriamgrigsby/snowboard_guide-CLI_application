UserResort.destroy_all
User.destroy_all
Ticket.destroy_all
Lesson.destroy_all
Gear.destroy_all
Hotel.destroy_all
Resort.destroy_all
Hotel.destroy_all

user1 = User.create(name: "Rocky Pitto")
user2 = User.create(name: "Finn Thye")
user3 = User.create(name: "Parker Bacall")
user4 = User.create(name: "Josh Hundal")

breck = Resort.create(name: "Breck")
keystone = Resort.create(name: "Keystone")
vail = Resort.create(name: "Vail")
beaver_creek = Resort.create(name: "Beaver Creek")
park_city = Resort.create(name: "Park City")

k_gear = Gear.create(list: "Helmet, Goggles, Jacket, Pants, Gloves, Base layer, Socks, Boots, Rentals", link: "https://store.christysports.com/store_locations/christy-sports-keystone-snake-river", resort: keystone)
b_gear = Gear.create(list: "Helmet, Goggles, Jacket, Pants, Gloves, Base layer, Socks, Boots, Rentals", link: "https://store.christysports.com/store_locations/breckenridge-gondola", resort: breck)
v_gear = Gear.create(list: "Helmet, Goggles, Jacket, Pants, Gloves, Base layer, Socks, Boots, Rentals", link: "https://store.christysports.com/store_locations/christy-sports-vail", resort: vail)
bc_gear = Gear.create(list: "Helmet, Goggles, Jacket, Pants, Gloves, Base layer, Socks, Boots, Rentals", link: "https://store.christysports.com/store_locations/christy-sports-beaver-creek", resort: beaver_creek)
pc_gear = Gear.create(list: "Helmet, Goggles, Jacket, Pants, Gloves, Base layer, Socks, Boots, Rentals", link: "https://store.christysports.com/store_locations/christy-sports-park-city", resort: park_city)

b_lesson1 = Lesson.create(name: "Full Day Private", price: "$919", resort: breck)
b_lesson2 = Lesson.create(name: "Half Day Private", price: "$719", resort: breck)
b_lesson3 = Lesson.create(name: "Quad Squad", price: "$319", resort: breck)
b_lesson4 = Lesson.create(name: "Teen Group Lesson", price: "$225", resort: breck)
b_lesson5 = Lesson.create(name: "Adult Group Lesson", price: "$149", resort: breck)
k_lesson1 = Lesson.create(name: "Full Day Private", price: "$825", resort: keystone)
k_lesson2 = Lesson.create(name: "Half Day Private", price: "$659", resort: keystone)
k_lesson3 = Lesson.create(name: "Ultimate Four", price: "$315", resort: keystone)
k_lesson4 = Lesson.create(name: "Teen Group Lesson", price: "$205", resort: keystone)
k_lesson5 = Lesson.create(name: "Adult Group Lesson", price: "$205", resort: keystone)
v_lesson1 = Lesson.create(name: "Full Day Private", price: "$1049", resort: vail)
v_lesson2 = Lesson.create(name: "Half Day (3hr) Private", price: "$759", resort: vail)
v_lesson3 = Lesson.create(name: "Teen Lesson", price: "$229", resort: vail)
v_lesson4 = Lesson.create(name: "Adult Lesson", price: "$229", resort: vail)
bc_lesson1 = Lesson.create(name: "Full Day Private", price: "$1049", resort: beaver_creek)
bc_lesson2 = Lesson.create(name: "Half Day Private", price: "$759", resort: beaver_creek)
bc_lesson3 = Lesson.create(name: "Teen", price: "$229", resort: beaver_creek)
bc_lesson4 = Lesson.create(name: "Adult", price: "$229", resort: beaver_creek)
pc_lesson1 = Lesson.create(name: "Full Day Private", price: "$979", resort: park_city)
pc_lesson2 = Lesson.create(name: "Half Day Private", price: "$719", resort: park_city)
pc_lesson3 = Lesson.create(name: "Adult", price: "$229", resort: park_city)
pc_lesson4 = Lesson.create(name: "Teen", price: "$239", resort: park_city)

b_ticket1 = Ticket.create(name: "Full Day", price: "$156", resort: breck)
b_ticket2 = Ticket.create(name: "Half Day", price: "$117", resort: breck)
k_ticket1 = Ticket.create(name: "Full Day", price: "$125", resort: keystone)
k_ticket2 = Ticket.create(name: "Half Day", price: "$93.75", resort: keystone)
v_ticket1 = Ticket.create(name: "Full Day", price: "$172", resort: vail)
v_ticket2 = Ticket.create(name: "Half Day", price: "$129", resort: vail)
bc_ticket1 = Ticket.create(name: "Full Day", price: "$172", resort: beaver_creek)
bc_ticket2 = Ticket.create(name: "Half Day", price: "$129", resort: beaver_creek)
pc_ticket1 = Ticket.create(name: "Full Day", price: "$154", resort: park_city)
pc_ticket2 = Ticket.create(name: "Half Day", price: "$115.5", resort: park_city)

b_hotel1 = Hotel.create(name: "Double Tree", price: "224", rating: 4.0, link: "https://doubletree3.hilton.com/en/hotels/colorado/doubletree-by-hilton-hotel-breckenridge-QKBVRDT/index.html?SEO_id=GMB-DT-QKBVRDT", resort: breck)
b_hotel2 = Hotel.create(name: "One Ski Hill Place", price: "730", rating: 4.5, link: "http://oneskihill.rockresorts.com/default.asp", resort: breck)
b_hotel3 = Hotel.create(name: "Grand Colorado on Peak 8", price: "410", rating: 4.7, link: "https://grandcolorado.com/", resort: breck)
k_hotel1 = Hotel.create(name: "Keystone Lodge and Spa", price: "249", rating: 4.4, link: "https://www.keystoneresort.com/plan-your-trip/stay/keystone-lodging.aspx?code=keystone-lodge-hotel", resort: keystone)
k_hotel2 = Hotel.create(name: "Days Inn", price: "93", rating: 3.0, link: "https://www.wyndhamhotels.com/days-inn/silverthorne-colorado/days-inn-silverthorne/overview", resort: keystone)
k_hotel3 = Hotel.create(name: "Lone Eagle Condos", price: "811", rating: 5.0, link: "https://www.keystoneresort.com/plan-your-trip/stay/keystone-lodging.aspx?code=lone-eagle-condominiums", resort: keystone)
v_hotel1 = Hotel.create(name: "Vail Mountain Lodge and Spa", price: "1959", rating: 4.7, link: "https://vailmountainlodge.com/", resort: vail) 
v_hotel2 = Hotel.create(name: "Tivoli Lodge", price: "439", rating: 4.6, link: "https://tivolilodge.com/?utm_source=googlemybusiness&utm_medium=organic", resort: vail)
v_hotel3 = Hotel.create(name: "Green Bridge Inn", price: "189", rating: 4.7, link: "https://www.greenbridgeinn.com/", resort: vail)
bc_hotel1 = Hotel.create(name: "Park Hyatt", price: "1054", rating: 4.6, link: "https://www.hyatt.com/en-US/hotel/colorado/park-hyatt-beaver-creek-resort-and-spa/beave", resort: beaver_creek)
bc_hotel2 = Hotel.create(name: "Comfort Inn", price: "169", rating: 4.0, link: "https://www.choicehotels.com/colorado/avon/comfort-inn-hotels/co052?source=gyxt", resort: beaver_creek)
bc_hotel3 = Hotel.create(name: "Beaver Creek Lodge", price: "521", rating: 4.6, link: "https://www.kesslercollection.com/beaver-creek-lodge/?utm_source=google&utm_medium=local&utm_campaign=localmaps&utm_content=1", resort: beaver_creek)
pc_hotel1 = Hotel.create(name: "The Lodge at Mountain Village", price: "109", rating: 4.0, link: "https://www.allseasonsresortlodging.com/property/the-lodge-at-the-mountain-village/?start_date=12/04/2019&end_date=12/04/2019&guests=1", resort: park_city)
pc_hotel2 = Hotel.create(name: "Stein Eriksen Lodge", price: "1853", rating: 4.7, link: "https://www.steinlodge.com/taste-of-fall.html?gclid=Cj0KCQiAz53vBRCpARIsAPPsz8V-v06756LUpDbC4avsWhCi33wSxnYLHobRTnqItYPxUcjr3_8zE9gaAhhKEALw_wcB&gclsrc=aw.ds", resort: park_city)
pc_hotel3 = Hotel.create(name: "Marriotts Summit Watch", price: "519", rating: 4.5, link: "https://www.marriott.com/hotels/travel/slcvi-marriotts-summit-watch/?scid=bb1a189a-fec3-4d19-a255-54ba596febe2", resort: park_city)






