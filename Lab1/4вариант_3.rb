def maxx(num)
max=0
pr = 1
	while num!=0
		first = num % 10
		if first > max
		max = first
			for i in 2..max
				if max.gcd(i)!=1
					pr = i*max 
				end
			end 
		end	
		num/=10
	end
	puts max
	puts pr
end
puts maxx(gets.chomp.to_i)

#2983
#2 - 1 2        4 - 1 2 4 
#9 - 1 3 9      5 - 1 5
#8 - 1 2 4 8    6 - 1 2 3 6
#3 - 1 3        7 - 1