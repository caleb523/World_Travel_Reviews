class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :account
      t.integer :city
      t.string :description
      t.integer :rating
      t.float :reviewrating

      t.timestamps
    end
  end
end
