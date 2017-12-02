# == Schema Information
#
# Table name: trips
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  date_start :date             not null
#  date_end   :date             not null
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

class Trip < ApplicationRecord
  belongs_to :user
  has_many :locations, dependent: :destroy
  before_create :format_date

  def display_date_range
    "#{self.date_start} - #{self.date_end}"
  end

end
