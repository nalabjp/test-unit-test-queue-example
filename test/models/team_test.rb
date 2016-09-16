require 'test_helper'

class TeamTest < ActiveSupport::TestCase
  test 'dev1' do
    t = Team.new('dev1')
    assert_equal 'dev1', t.name
  end

  test 'dev2' do
    t = Team.new('dev2')
    assert_equal 'dev2', t.name
  end
end
