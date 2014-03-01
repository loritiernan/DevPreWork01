#The prime factors of 13195 are 5,7,13 and 29
#what is the largest prime factor of the number 600851475143

def prime? n
    (2..(n-1)).each { |x| return false if n % x == 0 }
    true
end

n = 600851475143
a = []
product_sum = 1
x = 2 

while product_sum < n
    if n % x == 0 && prime?(x)
        a << x
        product_sum *= x
    end
    x += 1
end
