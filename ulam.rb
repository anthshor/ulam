#!/usr/bin/env ruby
#
# Returns the first 25 ulam numbers. 
#

ulam = [1,2]
test = Hash.new(0)
counter = 0
puts "Enter n for the number of Ulam numbers:"
n = gets.chomp.to_i - 1

y = 2
for i in 1..n
    for x in 0..y-2
      result = ulam[x] + ulam[y-1]
      test[result] += 1
      if (test[result] == 1)
         ulam << result
      elsif (test[result] > 1)
         test[result].times {ulam.delete(result)}
      else
        null 
      end
    end
  ulam.sort!
  y += 1
end
puts "#{ulam[0..n]}"
