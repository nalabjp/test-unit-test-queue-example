require 'test_helper'

class AdminTest < ActiveSupport::TestCase
  test 'admin1' do
    t = Admin.new('admin1')
    assert_equal 'admin1', t.name
  end

  test 'admin2' do
    t = Admin.new('admin2')
    assert_equal 'admin2', t.name
  end
end
