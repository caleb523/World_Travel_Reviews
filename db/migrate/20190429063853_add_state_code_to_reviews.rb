class AddStateCodeToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :state_code, :string
  end
end
