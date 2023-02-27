class CreateListings < ActiveRecord::Migration[7.0]
  def change
    create_table :listings do |t|
      t.string :name
      t.float :rating
      t.text :description
      t.string :short_description
      t.string :launch_site
      t.integer :price
      t.date :depart_date
      t.integer :duration
      t.integer :capacity

      t.timestamps
    end
  end
end
