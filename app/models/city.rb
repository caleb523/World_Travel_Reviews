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
    validates :city_name, length: { maximum: 60 }, presence: true, allow_blank: false
    validates :country_name, length: { maximum: 60 }, presence: true, allow_blank: false
    validates :state_name, length: { maximum: 60 }, presence: true, allow_blank: false
end
