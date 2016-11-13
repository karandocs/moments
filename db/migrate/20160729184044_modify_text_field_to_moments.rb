class ModifyTextFieldToMoments < ActiveRecord::Migration[5.0]
  def change
    change_column :moments, :message, :text
  end
end
