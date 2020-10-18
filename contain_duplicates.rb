# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
  hash = {}
  nums.each do |i|
    if hash.include?(i)
      true
      break
    end
    hash[i] = 1
  end
  false
end

# Solution 2

def contains_duplicate_2(nums)
  hash = {}
  nums.each do |i|
    hash[i] = 1
  end

  hash.length == nums.length
end

# Solution 3

def contains_duplicate_3(nums)
  dupli = nums.uniq
  dupli.length != nums.length
end
