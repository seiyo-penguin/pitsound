class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :nickname
      t.integer :rate
      t.text :comments
      t.integer :uploader_id
      t.timestamps null: false
    end
  end
end
