require 'test_helper'

class UserTest < ActiveSupport::TestCase
  should validate_presence_of(:name)
  should validate_presence_of(:email)

  context 'with a valid email address' do
    should allow_value('billy@example.com').for(:email)
  end

  context 'with an invalid email address' do
    should_not allow_value('billy@example').for(:email)
  end
end
