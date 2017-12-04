# == Schema Information
#
# Table name: addresses
#
#  id          :integer          not null, primary key
#  street      :string           not null
#  city        :string           not null
#  state       :string           not null
#  zip         :integer          not null
#  location_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  longitude   :float
#  latitude    :float
#
# Indexes
#
#  index_addresses_on_location_id  (location_id)
#
# Foreign Keys
#
#  fk_rails_...  (location_id => locations.id)
#

class Address < ApplicationRecord
  belongs_to :location
  geocoded_by :full_street_address
  after_validation :geocode

  def full_street_address
    [self.street, self.city, self.state, self.zip].compact.join(', ')
  end

end
