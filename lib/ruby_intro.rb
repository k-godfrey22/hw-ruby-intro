# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0 
  sum = arr.inject(0, :+)
  sum 
end

def max_2_sum arr
  # YOUR CODE HERE
  sum = 0
  if arr == []    ##if the array is empty return 0
    return 0
  elsif arr.count == 1 ##if the array has one element return that element
    return arr[0]
  else ##when the array has more than one element
    arr_2 = arr.max(2) ##find max two values
    sum = arr_2.reduce(:+) ##sum
  end
  return sum
end

def sum_to_n? arr, n
  if arr == [] or arr.length == 1               ##Checking if the array is empty or only has one member
    return false                      ##if array is empty or has only one member return false
  else
    arr_2 = arr.combination(2).select{|x,y| x+y==n}         ##new arr_2 is an array of combinations that sum to n
    if arr_2.length == 0           ##if arr_2 is empty then return false
      return false
    else
      return true                ##if arr_2 is not empty, return true
    end
      
      
  end
  
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name                 ##concating hello with the passed string
end

def starts_with_consonant? s
  s = s.downcase                              ##make the string all lowercase
  
  vowels = ['a', 'e', 'i', 'o', 'u']      ##array containing the vowels
  
  ##check if the string is empty, does not strart with a letter or is not a string
  if s == '' or s[0].match?(/[^a-z]/)
    return false                          ##if so return false
  else
    result = vowels.include?(String(s[0]))     ##checking if the the first letter of string contains any vowels 
    if result == false ##if the first letter is a vowel return false, true otherwise
      return true
    else
      return false
    end
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.count("a-zA-Z") > 0 or s.empty? ##if there is a letter or the string is empty retrun false
    return false
  end
  
  a = s.to_i(2) ##convert to decimal
  if (a%4) == 0 ##is decimal number a multiple of 4, return true if it is, false otherwise
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn       ##define oobjects
  attr_accessor :price
  
  def initialize(isbn, price) 
    @isbn = isbn            ##get isbn
    @price = price          ##get price
     
    if isbn == ""           ##if isbn is empty rais error
      raise ArgumentError, "ISBN cannot be empty"
    end
    if price <= 0.00        ##If price is 0 or negative raise error
      raise ArgumentError, "Price must be greater than zero"
    end
  end
  
  def price_as_string() 
    @price = price          ##get the price
    p = '%.2f' % price      ##convert to floating number
    p.to_s
    return "$" + p          ##concate with $ sign in front
  end
end
