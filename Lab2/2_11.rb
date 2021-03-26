#4 Дана строка. Необходимо подсчитать количество чисел в этой
# строке, значение которых меньше 5

def kolvo()
	if !ARGV.empty?
	ARGV[0].split(" ").count {|x| x.to_i > 5}
	end
end
puts kolvo()