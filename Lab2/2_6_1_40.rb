def vvod(mas)
	puts "Введите\n"
	num = $stdin.gets.chomp
	while !num.empty?
		mas<<num.to_i
		num = $stdin.gets.chomp
	end
	mas
end

def mas()
	mas = Array.new
	mas = vvod(mas)
	min = 99999999999999999999
	for i in 0..mas.size-1
		if mas[i] < min && mas[i] % 2 == 0 
			min = mas[i]
		end
	end
	puts min
end
mas()