collection @events
attributes(:id, :name, :venue, :address, :host, :start_time, :end_time, :description, :category)

child :user => 'organizer' do
  attributes :id, :name
  node(:url) { |user| user_url(user) }
end

child :comments do
	attributes :id, :body
end