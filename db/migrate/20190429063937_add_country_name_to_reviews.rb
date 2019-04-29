class AddCountryNameToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :country_name, :string
  end
end
