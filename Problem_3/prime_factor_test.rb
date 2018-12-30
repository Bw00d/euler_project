require "minitest/autorun"
require_relative 'prime_factor'

class PrimeFactorTest < Minitest::Test
  def test_is_prime
    assert_equal true, is_prime(3)
    assert_equal false, is_prime(4)
  end

  def test_prime_factors
    assert_equal [1, 2, 3, 5, 7, 11, 13, 17, 19, 23, 29], prime_factors(30)
  end

  def test_highest_prime_factor
    assert_equal 5, highest_prime_factor(100)
  end
end