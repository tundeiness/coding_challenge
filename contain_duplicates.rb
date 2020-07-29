# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
  hash = { }
  for i in nums
     if hash.include?(i)
        true
      break
     end
      hash[i] = 1
  end
  false
end

# Solution 2


def contains_duplicate(nums)

  hash = { }

  for i in nums
     hash[i] = 1
  end

  if hash.length == nums.length
      return false
  else
      return true
  end
end



# Solution 3


def contains_duplicate(nums)
  dupli = nums.uniq
  if (dupli.length == nums.length)
    false
  else
    true
  end
end
