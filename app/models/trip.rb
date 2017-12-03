
# == Schema Information
#
# Table name: trips
#
#  id                 :integer          not null, primary key
#  name               :string           not null
#  date_start         :date             not null
#  date_end           :date             not null
#  user_id            :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
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
  has_attached_file :image, optional: true
  validates_attachment :image,
                     content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }

  def display_date_range
    "#{self.date_start.strftime("%m/%d/%Y")} - #{self.date_end.strftime("%m/%d/%Y")}"
  end

end
