def vvod(mas)
	"Введите\n"
	num = $stdin.gets.chomp
	while !num.empty?
		mas << num.to_i
		num = $stdin.gets.chomp
	end
	mas
end

#40

# def min()
# 	mas = Array.new
# 	mas = vvod(mas)
# 	mas.filter {|i| i.even?}.min	
# end
# puts min()

#16

# def max1()
# 	mas = [6,2,4,9,5]
# 	# mas = vvod(mas)
# 	max = mas.max
# 	max2 = mas.clone.filter {|i| i!=max}.max 
# 	perem, perem2 = [mas.rindex(max), mas.index(max2)].sort
# 	puts mas[perem+1,perem2-1]
# end
# puts max1()

#28

# def max2()
# 	mas = [8,2,4,6,8,5]
# 	# mas = vvod(mas)
# 	max = mas.max 
# 	perem, perem2 = [mas.rindex(max), mas.index(max)].sort
# 	puts mas[perem+1,perem2-1]
# end
# puts max2()

#4
def ybv()
	mas = [8,2,4,6,8,5]
	mas.map.with_index {|num, i| [num, i]}.inject do
		|acc, elem| 
		if acc[0] > elem[0] 
		puts "#{acc[1]} => #{elem[1]}"
		end
		elem
	end
end
ybv()


#SELECT и FILTER - ОДНО И ТОЖЕ

