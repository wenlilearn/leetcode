=begin
Given an array of integers that is already sorted in ascending order, find two numbers such that they add up to a specific target number.

The function twoSum should return indices of the two numbers such that they add up to the target, where index1 must be less than index2. Please note that your returned answers (both index1 and index2) are not zero-based.

You may assume that each input would have exactly one solution and you may not use the same element twice.

Input: numbers={2, 7, 11, 15}, target=9
Output: index1=1, index2=2
=end

module Main
  # @param {Integer[]} numbers
  # @param {Integer} target
  # @return {Integer[]}
  def two_sum(numbers, target)
    if numbers.empty? || numbers.length == 1 || target == nil
      return []
    end

    map = {}

    numbers.each_with_index do |num, idx|
      if map[num].nil?
        map[num] = [idx]
      else
        map[num] << idx
      end
    end

    for i in 0...(numbers.length)
      diff = target - numbers[i]

      if(map.has_key?(diff))
        keys = map[diff]

        if keys.length == 1
          return [i + 1, keys[0] + 1]
        else
          keys.each do |key|
            if key != i
              return [i + 1, key + 1]
            end
          end
        end
      end
    end

    return []
  end
end
