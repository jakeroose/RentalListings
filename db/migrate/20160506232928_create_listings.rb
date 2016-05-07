class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.text :description
      t.string :address
      t.integer :bed
      t.integer :bath
      t.integer :half_bath
      t.integer :square_foot
      t.string :price

      t.timestamps
    end
  end
end
