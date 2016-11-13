class CreateWishes < ActiveRecord::Migration[5.0]
  def change
    create_table :wishes do |t|
      t.text :wish
      t.string :reason
      t.datetime :should_happen_on
      t.boolean :completed

      t.timestamps
    end
  end
end
