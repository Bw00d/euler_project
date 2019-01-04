require_relative '../helpers/collections'
# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

# The solution below works, however, it is incredibly slow for very large numbers.
# It would be worth spending some time optimizing the code to see how much time
# could be saved.

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

# this method is slow for very large numbers. Very large number kill the process.
def prime_factors(num)
  primes = []
  (1..num).to_a.each do |n|
    if is_prime(n)
      primes << n
    end
  end
  primes
end

def highest_prime_factor(num)
  factors = []
  primes = prime_factors(num)
  primes.each do |n|
    if num % n == 0
      factors << n
    end
  end
  factors.last
end

def simple_highest_prime(primes, num)
  factors = []
  primes.reverse.each do |n|
    if num % n == 0
      factors << n
    end
  end
  factors.first
end

# prime_factors(600851475143)  # Use this to find all primes half the size of the
# number. I am storying it as an array because it takes too long to run. 
# highest_prime_factor(num)   Use this to give a number and find the highest
# prime using the full program.  Warning. It is time consuming.
 # simple_highest_prime(Collections::PRIMES, 600851475143)
 is_prime(7)

