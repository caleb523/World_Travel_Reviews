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

require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
