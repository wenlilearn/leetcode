=begin
 Given an array of integers, find if the array contains any duplicates. Your function should return true if any value appears at least twice in the array, and it should return false if every element is distinct.
=end

require 'set'

module Main
  # @param {Integer[]} nums
  # @return {Boolean}
  def contains_duplicate(nums)
    if nums.empty?
      return false
    elsif nums.length == 1
      return false
    end

    set = Set.new()

    nums.each do |num|
      if set.add?(num)
        set.add(num)
      else
        return true
      end
    end

    return false
  end

end
