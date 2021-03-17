def max() 
	ARGV.each {|num| puts num}.max
end 
puts "max число #{max().inspect}"