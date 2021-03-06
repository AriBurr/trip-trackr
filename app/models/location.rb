# == Schema Information
#
# Table name: locations
#
#  id                 :integer          not null, primary key
#  name               :string           not null
#  trip_id            :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#
# Indexes
#
#  index_locations_on_trip_id  (trip_id)
#
# Foreign Keys
#
#  fk_rails_...  (trip_id => trips.id)
#

class Location < ApplicationRecord
  belongs_to :trip, optional: true
  has_one :address, dependent: :destroy
  has_attached_file :image, optional: true
  validates_attachment :image,
                     content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }

 def self.find_location_not_on_trip
   Location.where('trip_id IS ?', nil)
 end

end
