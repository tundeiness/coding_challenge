def decimal_to_base(num, b)
  if num < b
    num
  else
    10 * decimal_to_base(num/b, b) + (num % b)
  end 
end

p decimal_to_base(23, 2)