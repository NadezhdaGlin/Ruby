#4
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

#11
def kolvo()
	s = s.to_s
	if !ARGV.empty?
	ARGV.each {|x| s+=x}.count
	end
end
puts kolvo()

#15

def chislova()
	if !ARGV.empty?
	ARGV[0].to_i.digits.uniq.size
	end
end
puts chislova()