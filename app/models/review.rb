# == Schema Information
#
# Table name: reviews
#
#  id           :integer          not null, primary key
#  city_name    :string
#  comment      :text
#  country_name :string
#  rating       :integer
#  state_code   :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :integer
#

class Review < ApplicationRecord
    validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 1,
        less_than_or_equal_to: 5, message: "%{value} is not a valid entry"}, presence: true
    validates :user_id, format: { with: /[a-z]\-[0-9]{6}\-[0-9]{3}/}, length: { is: 12 }, presence: true
    validates :city_name, length: { maximum: 60 }, presence: true
    validates :state_code, length: { with: /[A-Z]{2}/ }, length: {is: 2 }, presence: true
    validates :country_name, length: { maximum: 60 }, presence: true
    validates :comment, length: { maximum: 5000 }, presence: true
    belongs_to :user
    belongs_to :city
    def user_params
        params.require(:user).permit(:id, :city_name, :country_name, :search)
    end
    
    def self.search(search)
        if search
            self.where("lower(city_name) like lower(?) OR lower(country_name) like lower(?)", "%#{search}%", "%#{search}%")
        else
            User.all
        end
    end
    
end
