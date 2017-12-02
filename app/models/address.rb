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
end
