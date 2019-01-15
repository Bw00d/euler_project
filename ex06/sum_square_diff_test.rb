require 'minitest/autorun'
require_relative 'sum_square_diff'

class SumSquareDiffTest < Minitest::Test
  
  def test_square_of_sums
    assert_equal 3025, square_of_sums((10))
  end

  def test_sum_of_squares
    assert_equal 385, sum_of_squares(10)
  end

  def test_difference
    assert_equal 2640, difference(10)
  end
end