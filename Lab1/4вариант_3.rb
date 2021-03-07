num = gets.chomp.to_i
def summa(num)
	sum=0
	while num!=0 
		sum += num % 10
		num /= 10
	end
	sum
end

def chek(num)
	if summa(num) < 5
		return true
	else
		return false
	end
end

def prost(num, num2)
	for i in 2..num2/2
		if num % i == 0 && num2 % i == 0
			return false 
		end
	end
	return true
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
	if num2 % del == 0
		return false
	else
		return true
	end
end

def pr(num)
	result = 0
	for num2 in 2..num-1
		if chek(num2) && naim(num, num2) && prost(num, num2) && num*num2 > result
			result = num*num2
		end
	end
	result
end
puts pr(num)
#pr = num*num2

#puts pr

#if naim(gets.chomp.to_i, num2.rand(10...100))
#	puts "#{num*num2}"
#else
#	puts "nice nice"
#end

#14 = 1 2 7 14
#for(i=2; i<; i++) 

#if chek(gets.chomp.to_i) 
#	puts "Сумма цифр меньше 5"
#else
#	puts "Сумма цифр не меньше 5"
#end
#2983
#2 - 1 2        4 - 1 2 4 
#9 - 1 3 9      5 - 1 5
#8 - 1 2 4 8    6 - 1 2 3 6
#3 - 1 3        7 - 1
#15 - 1 3 5 15
#25 - 1 5 25 

#14 - min 2 max 7
# 14 1 2 7 14

#3 1117
#
#