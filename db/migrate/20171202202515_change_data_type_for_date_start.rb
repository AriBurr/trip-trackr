class ChangeDataTypeForDateStart < ActiveRecord::Migration[5.1]
  def up
      change_column :trips, :date_start, 'date USING CAST(date_start AS date)'
  end

  def down
      change_column :trips, :date_start, :string
  end
end
