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
  
end