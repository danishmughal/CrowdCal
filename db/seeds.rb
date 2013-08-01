# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


25.times do
	Event.create!(name: Random.alphanumeric(8), venue: Random.state_full,
	 address: Random.address_line_1 + ", " + Random.address_line_2 + ", " + Random.state_code + Random.zipcode , 
	 start_time: '2013-08-30T14:00:00-07:00', 
	 end_time: '2013-08-30T14:50:00-07:00', 
	 description: Random.paragraphs(2), 
	 category: 'Social', 
	 user_id: 1, 
	 host: Random.firstname + Random.lastname)
end