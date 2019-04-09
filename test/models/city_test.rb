# == Schema Information
#
# Table name: cities
#
#  id           :integer          not null, primary key
#  city_name    :string
#  country_name :string
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
    present_cityname = cities(:one)
    present_cityname.city_name = "Walker"
    assert present_cityname.valid?
    # one = cities(:one)
    # assert_not one.valid?
  end

  test "City name must not be present" do
    one = cities(:one)
    one.city_name = " "
    assert_not one.valid?
  end
end
