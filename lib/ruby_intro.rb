# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  # YOUR CODE HERE
  summed = 0
  arr.each {|a| summed += a}
  summed
end

def max_2_sum(arr)
  # YOUR CODE HERE
    summed = 0
    return summed if arr.empty?
    return arr[0] if arr.length == 1
    arr.sort!
    summed += arr.pop
    summed += arr.pop
    summed 

  end

def sum_to_n?(arr, n)
  # YOUR CODE HERE
  return false if arr.length < 2
  arr_shift = []
  arr_shift.concat(arr)
  arr.each{|a| arr_shift.each{|b| return true if arr.index(a) != arr_shift.index(b) && a + b == n}}
  false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name 
end

def starts_with_consonant?(s)
  # YOUR CODE HERE
  return false if s.empty?

  return false if !/[[:alpha:]]/.match(s[0].downcase)

  first_letter = s[0].downcase
  vowels = ['a', 'e', 'i', 'o', 'u']
  vowels.each{|a| return false if first_letter == a}
  true
end

def binary_multiple_of_4?(s)
  # YOUR CODE HERE
  return false if s.empty?
  return true if s.length == 1 && s[0] == '0'
  return false if s.length < 2
  s.each_char {|a| return false if a != '1' && a != '0'}
  return s.end_with?('00')
end

# Part 3

class BookInStock
  # YOUR CODE HERE
  def initialize (isbn, price)
    if isbn.empty?
      raise ArgumentError
    end

    if price <= 0 
      raise ArgumentError
    end

    @isbn = isbn
    @price = price
  end 

  def isbn()
    return @isbn
  end 
  
  def price()
    return @price
  end 

  def isbn=(new_isbn)
    @isbn = new_isbn
  end

  def price=(new_price)
    @price = new_price
  end

  def price_as_string()
    price_string = @price.to_f.truncate(2).to_s
    if price_string[-2] == "."
      price_string = price_string + "0"
    end
    return "$"+ price_string
  end
end
