# == Schema Information
#
# Table name: reviews
#
#  id                 :integer          not null, primary key
#  comment            :text
#  image_content_type :string
#  image_file_name    :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#  rating             :float
#  title              :text
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  city_id            :integer
#  user_id            :integer
#

class Review < ApplicationRecord
    belongs_to :user
    belongs_to :city
    has_attached_file :image, styles: { medium: "400x600#" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
    validates :rating, :comment, :title, presence: true
    validates :title, length: { maximum: 120 }
    validates :comment, length: { maximum: 500 }
end
