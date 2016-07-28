class AddSongtitleToMusics < ActiveRecord::Migration
  def change
    add_column :musics, :songtitle, :string
  end
end
