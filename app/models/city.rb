# == Schema Information
#
# Table name: cities
#
#  id           :integer          not null, primary key
#  city_name    :string
#  country_name :string
#  state_name   :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class City < ApplicationRecord
    validates :city_name, length: { maximum: 60 }, presence: true
    validates :state_name, length: { maximum: 60 }
    validates :country_name, length: { maximum: 60 }, presence: true

    def self.search(search)
        if search
          self.where("lower(city_name) like lower(?) OR lower(state_name) like lower(?) OR lower(country_name) like lower(?)", "%#{search}%", "%#{search}%", "%#{search}%")
        else
          City.all
        end
    end
    def user_params
        params.require(:city).permit(:id, :city_name, :state_name, :country_name, :search)
    end
end
