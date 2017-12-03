class AddDescriptionToTrip < ActiveRecord::Migration[5.1]
  def change
    add_column :trips, :desc, :text
  end
end
