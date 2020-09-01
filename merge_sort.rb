def merge(arr1, arr2)

  if arr1.empty?
    arr2
  elsif arr2.empty?
    arr1
  elsif arr1.first < arr2.first
    [arr1[0]] + merge(arr1[1..arr1.length], arr2)
  else
    [arr2[0]] + merge(arr1, arr2[1..arr2.length])
  end
end



def split_sort(arry)
  if arry.length <= 1
    arry
  else
    mid = (arry.length / 2).floor
    left = split_sort(arry[0..mid - 1])
    right = split_sort(arry[mid..arry.length])

    merge(left, right)
  end
end


p split_sort([10, 75, 23, 12, 56, 34, 3, 5, 98, 6, 45, 198, 45, 37])
