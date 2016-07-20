class CreateMusics < ActiveRecord::Migration
  def change
    create_table :musics do |t|
      t.string :uid
      t.timestamps null: false
    end
  end
end
