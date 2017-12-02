class ChangeDataTypeForDateEnd < ActiveRecord::Migration[5.1]
  def up
      change_column :trips, :date_end, 'date USING CAST(date_end AS date)'
  end

  def down
      change_column :trips, :date_end, :string
  end
end
