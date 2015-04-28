class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :picture_url
      t.text :description

      t.timestamps null: false
    end
  end
end
