# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  venue       :string(255)
#  address     :string(255)
#  start_time  :datetime
#  end_time    :datetime
#  description :string(255)
#  category    :string(255)
#  user_id     :integer
#  host        :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Event < ActiveRecord::Base
  attr_accessible :address, :category, :description, :end_time, :name, :start_time, :user_id, :venue, :host
  
  searchkick

  # Basic relations to the other models
  belongs_to :user
  has_many :attendees
  has_many :comments

  # Basic presence validations for the form. I've made the address optional but venue required.
  validates :name, presence: true
  validates :venue, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :description, presence: true
  validates :category, presence: true
  validates :user_id, presence: true

  # Makes sure that the time inputs are valid. Function is below.
  validate :time_scope

	def time_scope
		if start_time < Time.now
			errors.add(:start_time, " is invalid or is for a past event.")
		end
		if end_time < start_time
			errors.add(:end_time, " is invalid. Please check to make sure it's correct.")
		end
	end

end
