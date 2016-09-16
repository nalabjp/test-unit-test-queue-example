require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  test 'product1' do
    t = Product.new('product1')
    assert_equal 'product1', t.name
  end

  test 'product2' do
    t = Product.new('product2')
    assert_equal 'product2', t.name
  end
end
