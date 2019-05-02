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

require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
