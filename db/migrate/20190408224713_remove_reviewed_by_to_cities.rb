class RemoveReviewedByToCities < ActiveRecord::Migration[5.2]
  def change
    remove_column :cities, :reviewed_by, :string
  end
end
