class AddDateToMoments < ActiveRecord::Migration[5.0]
  def change
    add_column :moments, :moment_time, :datetime
  end
end
