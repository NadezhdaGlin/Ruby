def first()
n = ARGV[0].to_i
mas = Array.new
	for i in 0..n-1
		mas << $stdin.gets.chomp.to_i
	end
mas
end
puts first().inspect

def first()
n = ARGV[0].to_i
mas = Array.new
	for i in 0..n-1
		mas.push($stdin.gets.chomp.to_i)
	end
mas
end
puts first().inspect
