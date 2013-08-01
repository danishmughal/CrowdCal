class SearchController < ApplicationController
	def generalsearch
	end

	def eventsearch
		@query = params[:q]
		@events = Event.search @query
	end

	def usersearch
	end

	def locationsearch
	end
end
