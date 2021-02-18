def maximum(num)
max=0
	while num!=0
		percent = num % 10
		if percent > max && percent%3!=0
			max=percent
		end
		num/=10
	end
	puts max
end
puts maximum(gets.chomp.to_i)


