require 'minitest/autorun'
require_relative 'high_triangle'

class HighTriangleTest < Minitest::Test
  # def test_create_triangle
  #   assert_equal [1], create_triangle(1,0)
  # end

  def test_count_factors
    assert_equal 6, count_factors([1,2,4,7,14,28])
  end

  def test_find_factors
    assert_equal [1,2,4,7,14,28], find_factors(28)
  end

  def test_create_triangle
    assert_equal 15, create_triangle(5, 10)
  end

  def test_find_high_triangle
    assert_equal 1, find_high_triangle(1)
    assert_equal 28, find_high_triangle(6)
    assert_equal 6, find_high_triangle(4)
  end
end