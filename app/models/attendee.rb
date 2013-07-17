# == Schema Information
#
# Table name: attendees
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  event_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Attendee < ActiveRecord::Base
  attr_accessible :event_id, :user_id

  validates :event_id, presence: true
  validates :user_id, presence: true

  belongs_to :event
  belongs_to :user

end
