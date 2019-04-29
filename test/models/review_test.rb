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

require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
