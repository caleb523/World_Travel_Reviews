class AddUserIdToCities < ActiveRecord::Migration[5.2]
  def change
    add_column :cities, :user_id, :integer
  end
end
