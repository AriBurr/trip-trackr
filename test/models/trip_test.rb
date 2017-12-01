<<<<<<< HEAD
=======
# == Schema Information
#
# Table name: trips
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  date_start :string           not null
#  date_end   :string           not null
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_trips_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#

>>>>>>> init commit
require 'test_helper'

class TripTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
