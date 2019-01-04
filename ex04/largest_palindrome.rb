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

def largest_palindrome
  divisor_one = 999
  divisor_two = 999
  palindromes = []
  while divisor_one < 99
    if is_palindrome(divisor_one * divisor_two)
      palindromes << (divisor_one * divisor_two)
      divisor_one -= 1
    else
      divisor_one -= 1
    end
  end
  print palindromes
end