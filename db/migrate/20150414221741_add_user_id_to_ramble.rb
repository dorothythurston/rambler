class AddUserIdToRamble < ActiveRecord::Migration
  def change
    add_column :rambles, :user_id, :integer, null: false
  end
end
