def factorial(n)
    return 1 if n == 0
    n.downto(1).inject(:*)
end

def factorialsSum(num)
    num.digits.inject(0) { |acc,i| acc + factorial(i) }
end

for i in 3..2540160
    puts i if i == factorialsSum(i)
end

