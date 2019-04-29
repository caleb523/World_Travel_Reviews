class AddCityNameToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :city_name, :string
  end
end
