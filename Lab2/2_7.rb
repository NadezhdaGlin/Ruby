def vvod(mas)
	"Введите\n"
	num = $stdin.gets.chomp
	while !num.empty?
		mas << num.to_i
		num = $stdin.gets.chomp
	end
	mas
end



def min()
	mas = Array.new
	mas = vvod(mas)
	mas.filter {|i| i.even?}.min	
end
puts min()

# def mas()
# 	counter = 0
# 	num = (0 .. mas.size-2).find {|i| mas[i] > mas[i+1] }
# 	puts num.to_s
# end

#SELECT и FILTER - ОДНО И ТОЖЕ

# 4 6 5 4 2 9

# def index() 
# 	mas = Array.new
# 	mas = vvod2(mas)
# 	counter = 0
# 	for i in 0..mas.size-2
# 		if mas[i] > mas[i+1]
# 			counter += 1
# 			puts i
# 		else
# 			if counter != 0
# 				puts i
# 				counter = 0
# 			end
# 		end
# 	end
# 	if mas[mas.size-1] < mas[mas.size-2]
# 		puts mas.size-1
# 	end
# end
# index()