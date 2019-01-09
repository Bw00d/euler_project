# A palindromic number reads the same both ways. The largest palindrome made 
# from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

def is_palindrome(num)
  result = true
  arr = num.to_s.split("")
  (arr.length / 2).times do
    if arr.pop != arr.shift
      result = false
      break
    end
  end
  result
end

# I use this method to test that all palindromes where inserted into array.
def test_method
  divisor_two = 999
  palindromes = []
  while divisor_two > 99
    divisor_one = 999
    900.times do 
      if is_palindrome(divisor_one * divisor_two)
        palindromes << (divisor_one * divisor_two)
        divisor_one -= 1
      else
        divisor_one -= 1
      end
    end
    divisor_two -=1
  end
   print palindromes.sort
end

def largest_palindrome
  divisor_two = 999
  palindromes = []
  while divisor_two > 99
    divisor_one = 999
    900.times do 
      if is_palindrome(divisor_one * divisor_two)
        palindromes << (divisor_one * divisor_two)
        divisor_one -= 1
      else
        divisor_one -= 1
      end
    end
    divisor_two -=1
  end
   puts palindromes.sort.last
end

largest_palindrome
# test_method