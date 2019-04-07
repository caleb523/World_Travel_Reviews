class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :city_name
      t.string :state_name
      t.string :country_name
      t.text :review
      t.text :reply

      t.timestamps
    end
  end
end
