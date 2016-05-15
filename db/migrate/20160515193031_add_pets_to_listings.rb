class AddPetsToListings < ActiveRecord::Migration
  def change
    remove_column :listings, :price
    
    change_table :listings do |t|
      t.string :pets
      t.integer :max_price
      t.integer :min_price
      t.string :property_type
    end
  end
end
