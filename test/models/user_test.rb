require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'user1' do
    u = User.new('user1', 20)
    assert_equal 'user1', u.name
    assert_equal 20, u.age
  end

  test 'user2' do
    u = User.new('user2', 21)
    assert_equal 'user2', u.name
    assert_equal 21, u.age
  end
end
