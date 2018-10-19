class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.integer :user_id
      t.string :latitude
      t.string :longitude
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
