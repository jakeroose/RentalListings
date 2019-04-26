class AddFieldsToImages < ActiveRecord::Migration
  def change
    change_table :images do |t|
      t.integer :post_id
      t.string  :file_id
      t.string  :file_filename
      t.string  :file_size
      t.string  :file_content_type
    end
  end
end
