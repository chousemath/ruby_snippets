# A palindromic number reads the same both ways. The largest palindrome made
# from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

def is_palindrome(number)
  num_array_length = (num_array = number.to_s.split('')).length
  for i in 0..(num_array.length / 2 - 1)
    return false if num_array[i] != num_array[num_array_length - 1 - i]
  end
  true
end

max = 0
(100..999).each do |val1|
  (100..999).each do |val2|
    prod = val1 * val2
    max = (max > prod) ? max : prod if is_palindrome(prod)
  end
end

puts max
