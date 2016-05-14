class AddFeaturesToListings < ActiveRecord::Migration
  def change
    change_table :listings do |t|
      t.text :features
      t.text :appliances
      t.text :schools
    end
  end
end
