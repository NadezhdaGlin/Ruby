# def first()
# n = ARGV[0].to_i
# mas = Array.new
# 	for i in 0..n-1
# 		mas << $stdin.gets.chomp.to_i
# 	end
# mas
# end
# puts first().inspect

# def second()
# n = ARGV[0].to_i
# mas = Array.new
# 	for i in 0..n-1
# 		mas.push($stdin.gets.chomp.to_i)
# 	end
# mas
# end
# puts second().inspect

# def third()
# n = ARGV[0].to_i
# mas = Array.new
# 	for i in 0..n-1
# 		mas.unshift($stdin.gets.chomp.to_i)
# 	end
# mas
# end
# puts third().inspect

# def fourth()
# n = ARGV[0].to_i
# mas = Array.new
# 	for i in 0..n-1
# 		mas.insert(mas.length, $stdin.gets.chomp.to_i)
# 	end
# mas
# end
# puts fourth().inspect

def fifth()
	n = ARGV[0].to_i
	mas = Array.new
	for i in 0..n-1
		mas += [$stdin.gets.chomp.to_i]
	end
	mas
end
puts fifth().inspect

