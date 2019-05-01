# == Schema Information
#
# Table name: reviews
#
#  id           :integer          not null, primary key
#  city_name    :string
#  comment      :text
#  state_code :string
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
  # 3 tests for city name attribute
  test "review should create an instance that has a city name" do
    current_city_name = reviews(:one)
    current_city_name.city_name= 'Dallas'
    assert current_city_name.valid?
  end
  
  test "review should not create an instance that has an incorrect city name" do
    notValid_city_name= reviews(:one)
    notValid_city_name.city_name= 3
    assert notValid_city_name.invalid?
  end
  
  test "review should not create an instance that does not have a city name" do
    no_city_name= reviews(:one)
    no_city_name.city_name= " "
    assert_not no_city_name.valid?
  end

######################################################################################

  # 3 tests for state code attribute
  test "review should create an instance that has a state code" do
    current_state_code = reviews(:one)
    current_state_code.state_code = 'Switzerland'
    assert current_state_code.valid?
  end

  test "review should not create an instance that has an incorrect state code" do
    notValid_state_code = reviews(:one)
    notValid_state_code.state_code = ' '
    assert_not notValid_state_code.valid?
  end
  
  test "review should not create an instance that does not have a state code" do
    no_state_code = reviews(:one)
    no_state_code.state_code = China
    assert_not no_state_code.valid?
  end

  ####################################################################################

  # 3 tests for rating attribute
  test "review should create an instance that has a rating" do
    current_rating = reviews(:one)
    current_rating.rating = 3
    assert current_rating.valid?
  end

  test "review should not create an instance that has an incorrect rating" do
    notValid_rating = reviews(:one)
    notValid_rating.rating = 'Three'
    assert_not notValid_rating.valid?
  end

  test "review should not create an instance that does not have a rating" do
    no_rating = reviews(:one)
    no_rating.rating = '3'
    assert no_rating.invalid?
  end

  ####################################################################################

  # 3 tests for comment attribute
  test "review should create an instance that has a comment" do
    current_comment = reviews(:one)
    current_comment.comment = 'The skills you acquire in this course will be the ones that will serve you well.'
    assert current_comment.valid?
  end

  test "review should not create an instance that has an incorrect comment" do
    notValid_comment = reviews(:one)
    notValid_comment.comment = "2.134"
    assert notValid_comment.valid?
  end

  test "review should not create an instance that does not have a comment" do
    no_comment = reviews(:one)
    no_comment.comment = " "
    assert no_comment.invalid?
  end

  ######################################################################################

  # 3 tests for state code attribute
  test "review should create an instance that has a state code" do
    current_state_code = reviews(:one)
    current_state_code.state_code = 'Switzerland'
    assert current_state_code.valid?
  end

  test "review should not create an instance that has an incorrect state code" do
    notValid_state_code = reviews(:one)
    notValid_state_code.state_code = ' '
    assert_not notValid_state_code.valid?
  end
  
  test "review should not create an instance that does not have a state code" do
    no_state_code = reviews(:one)
    no_state_code.state_code = 
    assert no_state_code.valid?
  end
end