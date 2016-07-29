class AddUidToUploadFiles < ActiveRecord::Migration
  def change
    add_column :upload_files, :music_uid, :string
  end
end