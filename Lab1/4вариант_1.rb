def first(num)
	k=0
	for i in 2..num
		if i%2===0 && num.gcd(i)!=1
		k+=1
		puts i
		end
	end
	puts ("кол-во четных чисел: " + k.to_s)
end
puts first(gets.chomp.to_i)