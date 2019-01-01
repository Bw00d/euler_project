require 'minitest/autorun'
require_relative 'largest_palindrome'

class LargestPalindromeTest < Minitest::Test
	def test_is_palindrome
    assert_equal true, is_palindrome(1001)    
    assert_equal true, is_palindrome(101)   
    assert_equal true, is_palindrome(10101)   
    assert_equal false, is_palindrome(12)    
    assert_equal false, is_palindrome(1234)    
    assert_equal false, is_palindrome(12345)    
	end
end