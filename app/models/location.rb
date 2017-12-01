<<<<<<< HEAD
=======
# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  trip_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_locations_on_trip_id  (trip_id)
#
# Foreign Keys
#
#  fk_rails_...  (trip_id => trips.id)
#

>>>>>>> init commit
class Location < ApplicationRecord
  belongs_to :trip, optional: true
  has_one :address, dependent: :destroy
end
