=begin
A binary watch has 4 LEDs on the top which represent the hours (0-11), and the 6 LEDs on the bottom represent the minutes (0-59).
Each LED represents a zero or one, with the least significant bit on the right.
Given a non-negative integer n which represents the number of LEDs that are currently on, return all possible times the watch could represent.
=end

module Main
# @param {Integer} num
# @return {String[]}
def read_binary_watch(num)
  if num == 0
    return ["0:00"]
  end
  res = []
    for i in 0..11
      for j in 0..59
        if (i.to_s(2) + j.to_s(2)).split("").count("1") == num
          res << "%d:%02d" % [i, j]
        end
      end
    end
  res
end
end
