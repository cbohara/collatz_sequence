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

  def self.longest(upper_limit)
    max = 0
    n = 0
    (1..upper_limit).each do |i|
      if self.sequence(i).length > max
        max = self.sequence(i).length
        max_sequence = self.sequence(i)
        n = max_sequence[0]
      end
    end
    return n
  end
end

#p Collatz.longest(7)
