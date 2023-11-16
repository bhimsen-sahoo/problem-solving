# frozen_string_literal: true

# Problem: https://leetcode.com/problems/two-sum/

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  nums.each.with_index do |val1, i|
    offset = i + 1
    nums[offset..-1].each.with_index do |val2, j|
      return [i, j + offset] if val1 + val2 == target
    end
  end

  []
end
