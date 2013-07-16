class MainController < ApplicationController
	def home
		@events = Event.where("start_time > ?", Time.now)
		@pastevents = Event.where("end_time < ?", Time.now)
	end

	def attend_event
	    @attendee = Attendee.new(:event_id => params['event_id'], :user_id => params['user_id'])
	    @attendee.save

	    redirect_to '/'
	end
end
