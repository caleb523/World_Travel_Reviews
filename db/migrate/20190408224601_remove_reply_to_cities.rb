class RemoveReplyToCities < ActiveRecord::Migration[5.2]
  def change
    remove_column :cities, :reply, :string
  end
end
