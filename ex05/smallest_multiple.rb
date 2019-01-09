# 2520 is the smallest number that can be divided by each of the numbers from 1 to
# 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the 
# numbers from 1 to 20?

def is_multiple(num, divisor)
  a = true
  while divisor > 0
    if num % divisor != 0
      a = false
      divisor -= 1
    else
      divisor -=1
    end
  end
  a 
end

def smallest_multiple(num)
  a = false
  divisor = num
  until a == true
    if is_multiple(num, divisor)
      a = true
      multiple = num
    else
      num += 1
    end
  end
  multiple
end