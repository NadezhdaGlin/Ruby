def vvod2(mas)
	puts "Вводите\n"
	num = $stdin.gets.chomp
	
	while !num.empty?
		mas << num
	num = $stdin.gets.chomp
	end
	mas
end

def index() 
	mas = Array.new
	mas = vvod2(mas)
	counter = 0
	for i in 0..mas.size-2
		if mas[i] > mas[i+1]
			counter += 1
			puts i
		else
			if counter != 0
				puts i
				counter = 0
			end
		end
	end
	if mas[mas.size-1] < mas[mas.size-2]
		puts mas.size-1
	end
end
index()
# 4 6 5 4 2 9
# 5 4 7 9 8 6
