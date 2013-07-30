# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  event_id   :integer
#  user_id    :integer
#  body       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Comment < ActiveRecord::Base
  attr_accessible :event_id, :user_id, :body

  belongs_to :event
  belongs_to :user
end
