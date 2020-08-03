def climb_stairs(n)
  ash = {}
  arr = []
  (1..n).step(1) { |v| arr << v }

   for x in 1..arr.length
    if x <= 3
      ash[x] = x
    else
      fir = x - 1
      sec = x - 2
      som = ash[fir] + ash[sec]
      ash[x] = som
    end
   end
   ash[n]
end
puts climb_stairs(7)
