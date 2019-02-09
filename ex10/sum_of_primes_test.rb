require 'minitest/autorun'
require_relative 'sum_of_primes'

class SumOfPrimesTests < Minitest::Test
  def test_is_prime
    assert_equal true, is_prime(3)
    assert_equal false, is_prime(4)
    assert_equal false, is_prime(1)
  end
  def test_um_of_primes
    assert_equal 17, sum_of_primes(10)
  end
end