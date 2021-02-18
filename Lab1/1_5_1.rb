def summ(num)
sum = 0
while num!=0
	sum += num % 10
	num/=10
end
return sum 
end
puts summ(gets.chomp.to_i)