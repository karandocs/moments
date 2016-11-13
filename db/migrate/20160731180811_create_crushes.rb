class CreateCrushes < ActiveRecord::Migration[5.0]
  def change
    create_table :crushes do |t|
      t.string :crush_number
      t.text :message_for_them
      t.text :why_you_like_them
      t.string :things_you_should_change

      t.timestamps
    end
  end
end
