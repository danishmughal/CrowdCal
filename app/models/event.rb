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
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Event < ActiveRecord::Base
  attr_accessible :address, :category, :description, :end_time, :name, :start_time, :user_id, :venue

  belongs_to :user
  has_many :attendees
end
