# Find the number (n) with the longest collatz sequence

module Collatz
  def self.sequence(input)
    result = []
    return result << input if input == 1
    n = input
    result << n
    while n != 1
      if n.even?
        n = n / 2
        result << n
      else
        n = 3 * n + 1
        result << n
      end
    end
    return result
  end
end

#p Collatz.sequence(5)
