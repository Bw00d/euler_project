require 'minitest/autorun'
require_relative 'greatest_product'
require_relative '../helpers/collections'

class GreatestProductTest < Minitest::Test

  def test_find_backward_diagonal
    assert_equal 14641, find_backward_diagonal(TEST_GRID)
  end

  def test_find_forward_diagonal
    assert_equal 20736, find_forward_diagonal(TEST_GRID)
  end

  def test_find_vertical
    assert_equal 10000, find_vertical(TEST_GRID)
  end
  def test_find_horizontal
    assert_equal 6561, find_horizontal(TEST_GRID)
  end

  def test_find_greatest_product
    assert_equal 20736, find_greatest_product(TEST_GRID)
  end
end
