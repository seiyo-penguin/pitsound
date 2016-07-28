class AddMusicIdToUploadFiles < ActiveRecord::Migration
  def change
    add_column :upload_files, :music_id, :string
  end
end
