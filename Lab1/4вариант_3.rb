def maxx(num)
max=0
pr = 1
sum=0
	while num!=0 
		first = num % 10
		if first > max
		max = first	
		end	
		if max.gcd(num)!=1
				pr = num*max 
		end
		sum+=first 
		num/=10
	end
	puts max
	puts pr
	puts sum
end
puts maxx(gets.chomp.to_i)

#2983
#2 - 1 2        4 - 1 2 4 
#9 - 1 3 9      5 - 1 5
#8 - 1 2 4 8    6 - 1 2 3 6
#3 - 1 3        7 - 1
