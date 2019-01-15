# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that 
# the 6th prime is 13.

# What is the 10001st prime number?

def is_prime(num)
  i = num / 2
  a = true
  while i > 1
    if num % i == 0 
      a = false
      i -= 1
    else
      i -= 1
    end
  end
  return a
end

# It needs to keep track of nth prime, the value, and to iterate through numbers.
# It needs to take a number as the nth prime to discover.
def nth_prime(num)
  nth = 0
  i = 2
  until nth == num
    if is_prime(i)
      value = i
      i += 1
      nth += 1
    else
      i += 1
    end
  end
  value
end
  
