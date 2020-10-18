# frozen_string_literal: true

# @param {Integer} n, a positive integer
# @return {Integer}
def hamming_weight(n)
  conv = n.to_s(2).split('')

  count = 0
  conv.each do |i|
    count += 1 if i == '1'
  end
  count
end
