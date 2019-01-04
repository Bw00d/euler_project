require "minitest/autorun"
require_relative 'even_fibonacci'

class EvenFibonacciTest < Minitest::Test
  def test_sum
    assert_equal 3524578, sum_sequence
  end
end