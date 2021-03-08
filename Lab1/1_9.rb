# 1

def first(num)
	k = (2 .. num).count { |i| i.even? && num.gcd(i) == 1 }
	puts ("кол-во четных чисел: " + k.to_s)
end

puts first(205)

# 2

def maximum(num)
	max = num.digits.filter { |x| x % 3 != 0 }.max
	puts "Второе задание: " + max.to_s
end

maximum(8769)

# 3

def summa(num)
	num.digits.inject { |acc, x| acc + x }
end

def chek(num)
	summa(num) < 5
end

def naim(num, num2)
	del = 0
	i = 2

	while del == 0
		if num % i == 0
			del = i
		end
		i += 1
	end

	num2 % del == 0
end

naim(15, 10)

def pr(num)
	result = 0
	for num2 in 2..num-1
		if chek(num2) && naim(num, num2) && num1.gcd(num2) != 1 && num*num2 > result
			result = num*num2
		end
	end
	result
end
