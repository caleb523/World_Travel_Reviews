class RemoveCityIdFromReviews < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :city_id, :integer
  end
end
