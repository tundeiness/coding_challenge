# frozen_string_literal: true

def climb_stairs(n)
  ash = {}
  arr = []
  (1..n).step(1) { |v| arr << v }

  (1..arr.length).each do |x|
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
