class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :name
      t.integer :price
      t.integer :number
      t.integer :rating
      t.references :user

      t.timestamps null: false
    end
  end
end
