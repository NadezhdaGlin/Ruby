def palindrom()
	s = s.to_s
	if !ARGV.empty?	
	ARGV.each { |e| s+=e  }
	if s.downcase == s.downcase.reverse()
		puts "Yes"
	else
		puts "No"
	end
end
end
puts palindrom()

#3443

def kolvo()
	s = s.to_s
	if !ARGV.empty?
	ARGV.each {|x| s+=x}.count
	end
end
puts kolvo()

