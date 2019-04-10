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

  test "City name should be valid" do
    city = cities(:one)
    city.state_name = "Walker"
    assert city.valid?
  end

  test "State name is not required" do
    city = cities(:one)
    city.state_name = ""
    assert city.valid?
  end

  test "City name is not be present" do
    city = cities(:one)
    city.city_name = " "
    assert_not city.valid?
  end

  test "Country name is not be present" do
    city = cities(:one)
    city.country_name = " "
    assert_not city.valid?
  end
end
