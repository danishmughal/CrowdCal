class MainController < ApplicationController
	def home
		@events = Event.where("start_time > ?", Time.now)
		@pastevents = Event.where("end_time < ?", Time.now)
	end
end
