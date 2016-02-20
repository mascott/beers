require 'test_helper'

class BeverageTest < ActiveSupport::TestCase
  test 'validates presence' do
    validate_presence_of :upc
  end
end
