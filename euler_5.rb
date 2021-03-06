# 2520 is the smallest number that can be divided by each of the numbers
# from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible
# by all of the numbers from 1 to 20?

def divisible(number)
  for i in 1..20
    return false if number % i != 0
  end
  true
end

counter = 20
while !divisible(counter) do
  counter += 20
end
puts counter
