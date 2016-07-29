class AddNickname2ToComments < ActiveRecord::Migration
  def change
        add_column :comments, :nickname, :text
  end
end
