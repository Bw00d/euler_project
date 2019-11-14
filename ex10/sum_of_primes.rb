# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

def is_prime(num)
  i = num / 2
  a = true
  if num < 2
    a = false
  else
    while i > 1
      if num % i == 0
        a = false
        i -= 1
      else
        i -= 1
      end
    end
  end
  return a
end

def sum_of_primes(num)
  sum = 0
  while num > 1
    if is_prime(num)
      sum += num
      num -= 1
    else
      puts num -=1
    end
  end
  sum
end

# it is time consuming to run the calculation. I puts the numbers as they sum
# so that the user can see that it is working.
puts sum_of_primes(200000)
