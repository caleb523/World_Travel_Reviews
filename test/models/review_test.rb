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

require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
