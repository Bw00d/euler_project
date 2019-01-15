require 'minitest/autorun'
require_relative 'nth_prime'

class NthPrime < Minitest::Test

  def test_is_prime
    assert_equal true, is_prime(3)
    assert_equal false, is_prime(4)
  end

  def test_nth_prime
    assert_equal 2 , nth_prime(1)
    assert_equal 5 , nth_prime(3)
    assert_equal 7 , nth_prime(4)
    assert_equal 13 , nth_prime(6)
    assert_equal 23 , nth_prime(9)
    assert_equal 101 , nth_prime(26)
    assert_equal 107 , nth_prime(28)
  end

end