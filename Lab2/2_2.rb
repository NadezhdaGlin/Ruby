def read()
num = gets.chomp
mas = Array.new
	while !num.empty?
		mas << num.to_i		
		num = gets.chomp
	end
	mas
end

newmas = read
puts newmas.inspect

def max(newmas)
	newmas.max
end
puts max(newmas)

def min(newmas)
	newmas.min
end
puts min(newmas)

def sum(newmas)
	sum=0
	newmas.map { |i| sum+=i  }
	sum
end
puts sum(newmas)

def mult(newmas)
	pr=1
	newmas.map {|i| pr*=i}
	pr
end
puts mult(newmas)

def summ(newmas)
	newmas.inject(0) { |result, elem| result + elem  }
end
puts summ(newmas)

def mult(newmas)
	newmas.inject(1) { |res, el| res * el}
end
puts mult(newmas)
