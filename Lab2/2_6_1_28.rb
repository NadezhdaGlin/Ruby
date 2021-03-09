def vvod(mas)
	puts "Введите\n"
	num = $stdin.gets.chomp
	while !num.empty?
		mas << num.to_i
	num = $stdin.gets.chomp
	end
	mas
end
def mas()
	mas = Array.new
	mas = vvod(mas)
	max1 = 0
	max2 = mas.length -	1
	for i in 1..mas.size - 1
		if mas[i] > mas[max1]
			max1 = i
		end
	end

	for i in 1..mas.length - 1
		if mas[mas.length - 1- i] > mas[max2]
			max2 = i
		end
	end

	mas1, mas2 = [mas1, mas2].sort

	for i in max1 + 1..max2 - 1
		puts "#{mas[i]}"
	end
end

mas()
#4 5 2 6 7 8 