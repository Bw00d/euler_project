require 'minitest/autorun'
require_relative 'largest_product'
require_relative '../helpers/collections'

class LargestProductTest < Minitest::Test
  # def test_product
  #   # assert_equal "9 × 9 × 8 × 9 = 5832", 
  # end

  def test_product_range
    assert_equal 21, product_range(3)
    assert_equal 126, product_range(4)
  end

  def test_display_result
    assert_equal "1 x 2 x 3 x 4 x 5 = 120", display_result
  end

  def test_check_answer
    assert_equal 5377010688, check_answer(13)  
  end
end