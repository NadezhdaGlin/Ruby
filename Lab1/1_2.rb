s = 'Простая строка'
puts s

a = 5
b = 3
e = "#{a} + #{b} равно \t #{a+b}"
puts e

s1 = %q[это строка с "кавычками"]
puts s1
s2 = %Q:это тоже строка со 'спец' \t\n символами:
puts s2

#%d - целочисленный
#%f - float вещественные 

puts "my number %d" %567
puts "my number %f" %567.6789
puts "my number %.2f" %567.6789
puts "my number %.3f" %567.6789
puts "my number %.0f" %567.6789
puts "my number %20f" %567.6789
puts "my number %020f" %567.6789
puts "my number %05d" %4
puts "my number %10d" %1
puts "my number %10d. Winter" %4
puts "my number %-10d. My string %20s" %[4, "'cat'"]
#f = `ls -a` 
#puts f

#my_number = 123
#puts "123 В двоичном виде: #{my_number.to_s(2)}"
#array = [4,4,2,5,2,7]
#puts array.sort