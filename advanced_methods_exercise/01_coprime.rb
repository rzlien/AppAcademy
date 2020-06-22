# Write a method, coprime?(num_1, num_2), that accepts two numbers as args.
# The method should return true if the only common divisor between the two numbers is 1.
# The method should return false otherwise. For example coprime?(25, 12) is true because
# 1 is the only number that divides both 25 and 12.

def coprime?(num_1, num_2)
    factors_1 = factor(num_1)
    factors_2 = factor(num_2)

    factors_1.each do |i|
        factors_2.each do |j|
            return false if i==j
        end
    end

    return true
end


def factor(num)
    factors = []

    (2..num).each do |i|
        if num%i==0
            factors << i
        end
    end

    return factors
end

#test for factor
#print factor(1)
#puts
#print factor(0)
#puts
#print factor(9)
#puts
#print factor(24)
#puts
#print factor(6)
#puts

#test for coprime?
p coprime?(25, 12)    # => true
p coprime?(7, 11)     # => true
p coprime?(30, 9)     # => false
p coprime?(6, 24)     # => false
