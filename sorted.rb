def sorted?(arr)
  n = arr.length

  if n <= 1
    true
  else
    sorted?(arr[0..n / 2]) 
  end
end

p sorted?([2, 4, 3, 6, 9, 3])
