require 'test_helper'

class BeverageTest < ActiveSupport::TestCase
  test 'validates presence' do
    validate_presence_of :upc
  end

  context 'with a 8 character upc' do
    should allow_value('12345678').for(:upc)
  end

  context 'with a 12 character upc' do
    should allow_value('123456789012').for(:upc)
  end

  context 'with an invalid upc character count' do
    should_not allow_value('12345678901').for(:upc)
  end
end
