def vvod2(mas)
	puts "Вводите\n"
	num = $stdin.gets.chomp
	while !num.empty?
		mas << num.to_i
		num = $stdin.gets.chomp
	end
	mas
end

def mas()
	mas = Array.new
	mas = vvod2(mas)
	max1, max2 = 0, 0
	chisla = 0
	for i in 1..mas.size - 1
		if mas[i] > mas[max1]
			max2 = max1
			max1 = i
		elsif mas[i] > mas[max2]
			max2 = i
		end
	end

	max1, max2 = [max1, max2].sort

	for j in max1 + 1 ..max2 - 1
		puts "#{mas[j]}"
	end
	# puts max1
	# puts max2
	#puts chisla
end

mas()
#1 7 5 9 4 2 31
#8 6 9 5 7 3 10