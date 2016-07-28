class AddUploadFileIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :upload_file_id, :string
  end
end
