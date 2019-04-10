class RemoveReviewToCities < ActiveRecord::Migration[5.2]
  def change
    remove_column :cities, :review, :string
  end
end
