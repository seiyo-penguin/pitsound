class AddSongtitleToUploadFiles < ActiveRecord::Migration
  def change
    add_column :upload_files, :songtitle, :string
  end
end
