class CreateMoments < ActiveRecord::Migration[5.0]
  def change
    create_table :moments do |t|
      t.string :unexpected_happiness
      t.string :disappointments
      t.string :message

      t.timestamps
    end
  end
end
