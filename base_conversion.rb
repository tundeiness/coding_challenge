def base_conversion(num)
  if num < 2
    num
  else
    10 * base_conversion(num / 2) + (num % 2)
  end
end

p base_conversion(31)
