require 'test_helper'

class RatingTest < ActiveSupport::TestCase
  should validate_presence_of(:user)
  should validate_presence_of(:beverage)
  should validate_inclusion_of(:value).in_range 1..5
end
