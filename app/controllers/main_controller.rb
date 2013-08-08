class MainController < ApplicationController
	def home
		@events = Event.where("start_time >= ?", Time.now)
		@pastevents = Event.where("start_time <= ?", Time.now)
	end

	def attend_event
	    @attendee = Attendee.new(:event_id => params['event_id'], :user_id => params['user_id'])
	    @attendee.save

	    @event = Event.find(params['event_id'])
	    redirect_to @event
	end

	def cancel_attend_event
		@attendee = Attendee.where(:event_id => params['event_id'], :user_id => params['user_id']).first
		@attendee.destroy

	    @event = Event.find(params['event_id'])
	    redirect_to @event
	end

	def grid
	end
end
