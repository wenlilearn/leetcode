=begin
Description:

Count the number of prime numbers less than a non-negative number, n.
=end

module Main
  # @param {Integer} n
  # @return {Integer}
  def count_primes(n)
    if n == 0 || n == 1 || n == 2
      return 0
    end

    primes = Array.new(n, true)

    primes[0] = false
    primes[1] = false
    primes[2] = true

    for i in 2...n
      if primes[i]
        for j in (i + 1)...n
          if j % i == 0
            primes[j] = false
          end
        end
      end
    end

    primes.count { |prime| prime }
  end
end
