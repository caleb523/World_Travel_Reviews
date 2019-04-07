class AddReviewedByToCities < ActiveRecord::Migration[5.2]
  def change
    add_column :cities, :reviewed_by, :string
  end
end
