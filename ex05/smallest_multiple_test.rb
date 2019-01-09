require 'minitest/autorun'
require_relative 'smallest_multiple'

class SmallestMultipleTest < Minitest::Test
  def test_smallest_multiple
    assert_equal 2520, smallest_multiple(10)
  end
end