# frozen_string_literal: true

class HashMap
  attr_accessor :hash, :arr, :len

  def initialize
    @hash = {}
    @arr = []
    @len = 0
  end

  def insert(key, value)
    idx = @len
    hash[key] = value, idx
    arr[idx] = key
    @len += 1
    self
  end

  def get(key)
    hash[key][0]
  end

  def delete(key)
    idx = hash[key][1]
    arr.slice!(idx)
    @len -= 1

    hash.delete(key)
    hash[arr[idx]][1] = idx
  end

  def get_random_key
    random = rand(0..@len)
    arr[random]
  end
end

test = HashMap.new

test.insert('0', 2).insert('1', 3).insert('2', 4).insert('3', 5)

p test.get('1')

p test.delete('2')

p test.hash

p test.get_random_key
