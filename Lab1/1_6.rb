def summ(num)
sum = 0
while num!=0
	sum += num % 10
	num/=10
end
return sum 
end
puts summ(gets.chomp.to_i)

def pr(num)
	pro = 1
	while num!=0
		pro*=num % 10
		num/=10
	end
return pro
end
puts pr(gets.chomp.to_i)

def minim(num)
	min = 10
	while num != 0
		digits = num % 10
		if digits < min
		min = digits
		end
	num/=10 
	end
	return min
end
puts minim(gets.chomp.to_i)

def maxim(num)
	max = 0
	while num!= 0
		digits = num % 10
		if max<digits
			max = digits
		end
		num/=10
	end
	return max 
end
puts maxim(gets.chomp.to_i)