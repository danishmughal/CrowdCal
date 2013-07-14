class Event < ActiveRecord::Base
  attr_accessible :address, :category, :description, :end_time, :name, :start_time, :user_id, :venue
end
