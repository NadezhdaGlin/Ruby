def read()
num = gets.chomp
mas = Array.new
	while !num.empty?
		mas << num.to_i
		num = gets.chomp
	end
	#puts mas.inspect
	mas
end
#puts read.inspect

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



# puts mas.inspect
# puts mas.max
# puts mas.min 
# puts mas.sum
# puts mas.pr


#puts mas.inspect
#first = gets.chomp.to_i

#for num in 0...ARGV.length
#	puts " #{ARGV[num]}"
#end

#ввели количество. num = 5. 
#длина массива (?) должна быть от 0 до 4
#следовательно с 0 - 4 индексах будут хранится введеные нами значения
#вывод введенных значений

# mas = Array.new
# num = gets.chomp.to_i
# mas << num
# puts mas.inspect