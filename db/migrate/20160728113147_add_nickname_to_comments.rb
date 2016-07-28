class AddNicknameToComments < ActiveRecord::Migration
  def change
    remove_column :comments, :nickname, :integer
  end
end
