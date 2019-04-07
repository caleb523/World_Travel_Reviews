# == Schema Information
#
# Table name: cities
#
#  id           :integer          not null, primary key
#  city_name    :string
#  country_name :string
#  reply        :text
#  review       :text
#  reviewed_by  :string
#  state_name   :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class City < ApplicationRecord
    validates :city_name, length: { maximum: 60 }, presence: true
    validates :country_name, length: { maximum: 60 }, presence: true
    validates :reply, length: { maximum: 5000 }, presence: true
    validates :review, length: { maximum: 5000 }, presence: true
    validates :reviewed_by, length: { maximum: 30 }, presence: true
    validates :state_name, length: { maximum: 60 }, presence: true
end
