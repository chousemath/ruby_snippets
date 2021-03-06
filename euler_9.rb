# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
# a^2 + b^2 = c^2
#For example, 3^2 + 4^2 = 9 + 16 = 25 = 52.
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

def condition(i, j)
  # first solved the two equations for just i and j
  500_000 - 1000*i - 1000*j + i*j == 0
end

def product(i, j)
  # the value of k is calculated for i and j
  i * j * Math.sqrt(i * i + j * j)
end

for i in 1..1000
  for j in 1..1000
    if condition(i, j)
      puts product(i, j)
      exit
    end
  end
end
