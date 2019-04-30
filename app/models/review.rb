# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  comment    :text
#  rating     :float            not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  city_id    :integer
#  movie_id   :integer
#  user_id    :integer
#

class Review < ApplicationRecord
    belongs_to :user
    belongs_to :city
    validates :rating, presence: true
    validates :comment, presence: true
end
