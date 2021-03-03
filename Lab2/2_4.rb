def read()
	first = Array.new
	file = File.open("4.txt").each do |line|
		first << line.chomp
	end
	first
end
puts read().inspect