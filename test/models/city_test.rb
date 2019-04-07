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

require 'test_helper'

class CityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "City name should be valid" do
    one = cities(:one)
    assert one.valid?
  end

  test "City name must be present" do
    one = cities(:one)
    one.city_name = " "
    assert_not one.valid?
  end
end