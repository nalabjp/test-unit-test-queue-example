require 'test_helper'

class RegistrationParameterTest < ActiveSupport::TestCase
  test 'params1' do
    p = { name: 'user1', age: 20 }
    rp = RegistrationParameter.new(p)
    assert_equal 'user1', rp.params[:name]
    assert_equal 20, rp.params[:age]
  end
end
