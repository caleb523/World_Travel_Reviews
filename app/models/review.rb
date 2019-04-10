# == Schema Information
#
# Table name: reviews
#
#  id           :integer          not null, primary key
#  account      :string
#  city         :integer
#  description  :string
#  rating       :integer
#  reviewrating :float
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Review < ApplicationRecord
    validates :rating, :in => 1..5
    validates_length_of :description, minimum: 5, maximum: 250, allow_blank: false
end
