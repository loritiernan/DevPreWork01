#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

class Numeric
    def divisible_to?(x)
        self > 0 and x.downto(1).all? { |i| self % i == 0 }
    end
end

def divisible_to(x)
    if x < 1
        return false
        elsif x == 1
        return 1
        else
        n = 0
        step = divisible_to(x-1)
        until n.divisible_to? x
            n += step
        end
        
        return n
    end
    
end

puts divisible_to(20)