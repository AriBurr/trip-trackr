class Location < ApplicationRecord
  belongs_to :trip, optional: true
  has_one :address, dependent: :destroy
end
