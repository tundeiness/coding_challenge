# @param {Integer} n, a positive integer
# @return {Integer}
def hamming_weight(n)
  conv = n.to_s(2).split('')

  count = 0
  conv.each do |i|
    if i == '1'
      count += 1
    end
  end
  count
end
