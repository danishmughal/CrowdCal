collection @events
attributes(:id, :name, :venue, :address, :host, :start_time, :end_time, :description, :category)

child :user => 'organizer' do
  attributes :id, :name
  node(:url) { |user| user_url(user) }
end

child :attendees do
	attributes :id, :user_id
	node(:name) { |attendees| attendees.user.name }

end

child :comments do
	attributes :id, :body
	node(:user_id) { |comments| comments.user.id }
	node(:user) { |comments| comments.user.name }
	node(:url) { |comments| user_url(comments.user) }
end