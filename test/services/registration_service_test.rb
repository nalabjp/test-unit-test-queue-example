require 'test_helper'

class RegistrationServiceTest < ActiveSupport::TestCase
  test 'user1' do
    u = User.new('user1', 20)
    rs = RegistrationService.new(u)
    assert_instance_of User, rs.user
    assert rs.execute
  end
end
