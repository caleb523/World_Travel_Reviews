# == Schema Information
#
# Table name: cities
#
#  id           :integer          not null, primary key
#  city_name    :string
#  country_name :string
#  reply        :text
#  review       :text
#  state_name   :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class City < ApplicationRecord
end
