# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  total = 0
  arr.each do |i|
    total += i
  end
  total
end

def max_2_sum arr
  return 0 if arr.length == 0
  return arr[0] if arr.length == 1

  max1, max2 = arr[0], arr[1]
  arr.drop(2).each do |x|
    if x > max1
      max2 = max1
      max1 = x
    elsif x > max2
      max2 = x
    end
  end
  max1 + max2
end

def sum_to_n? arr, n
  return false if arr.length <= 1

  arr.each_with_index do |i1, idx1|
    arr.each_with_index do |i2, idx2|
      return true if (i1 + i2 == n) && (idx1 != idx2)
    end
  end
  return false
end

# Part 2

def hello(name)
  'Hello, ' + name
end

def starts_with_consonant? s
  return false if s.length == 0

  constants = 'bcdfghjklmnpqrstvwxyz'
  firstChar = s[0].downcase
  chars = constants.split('')
  chars.each do |c|
    return true if c == firstChar
  end
  return false
end

def binary_multiple_of_4? s
  return true if s == '0'
  return false if s.length <= 2
  return false if s.to_i == 0

  s0 = s[-1]
  s1 = s[-2]
  return true if (s0 == '0') && (s1 == '0')

  return false
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    raise ArgumentError if (isbn == '') || (price <= 0)

    @isbn = isbn
    @price = price
  end
  attr_accessor :isbn, :price

  def price_as_string
    "$%.2f" % @price
  end

end
