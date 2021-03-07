def prost(num, num2)
	for i in 2..num2/2
		if num % i == 0 && num2 % i == 0
			return false 
		end
	end
	return true
end


def first(num)
	k=0
	for i in 2..num-1
		if i%2===0 && prost(num, i)
		k+=1
		puts i
		end
	end
	puts ("кол-во четных чисел: " + k.to_s)
end
puts first(gets.chomp.to_i)