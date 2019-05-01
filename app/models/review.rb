# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  comment    :text
#  rating     :float
#  title      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  city_id    :integer
#  user_id    :integer
#

class Review < ApplicationRecord
    belongs_to :user
    belongs_to :city
    validates :rating, :comment, :title, presence: true
    validates :title, length: { maximum: 120 }
    validates :comment, length: { maximum: 500 }
end
