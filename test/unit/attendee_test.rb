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

require 'test_helper'

class AttendeeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
