class AddUidToUploadFiles < ActiveRecord::Migration
  def change
    add_column :Upload_files, :music_uid, :string
  end
end