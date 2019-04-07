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
    validates_each :city_name, length: { maximum: 60 }, presence: true do |model, attr, value|
        model.errors.add(attr, 'must start with upper case') if value =~ /\A[a-z]/
    end
    validates :country_name, length: { maximum: 60 }, presence: true do |model, attr, value|
        model.errors.add(attr, 'must start with upper case') if value =~ /\A[a-z]/
    end
    validates :reply, length: { maximum: 5000 }, presence: true
    validates :review, length: { maximum: 5000 }, presence: true
    validates :reviewed_by, length: { maximum: 30 }, presence: true do |model, attr, value|
        model.errors.add(attr, 'must start with upper case') if value =~ /\A[a-z]/
    end
    validates :state_name, length: { maximum: 60 }, presence: true do |model, attr, value|
        model.errors.add(attr, 'must start with upper case') if value =~ /\A[a-z]/
    end
end
