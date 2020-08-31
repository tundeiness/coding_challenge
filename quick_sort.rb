def quickSort(arr)
  pivot = arr.last
  left = []
  right = []

  if arr.length > 1
    for i in arr
      i < pivot ? left.push(i) : right.push(i)
    end

    sortl = quickSort(left)
    sortr = quickSort(right)

    arr = sortl + [pivot] + sortr

  end

  arr
end

# rel = [3, 8, 10, 13, 1, 2, 6, 38]

p quickSort([3, 8, 10, 13, 1, 2, 6, 38])
