 puts "Выберите цифру, каким образом вы хотите получить значение. \n 
 1 - чтение из файла \n 2 - ввод вручную"
 number = gets.chomp.to_i
 case number
 	when "1" then puts vvod()
 	when "2" then puts vvod2()
 else
 	puts "Вы ввели не то число"
 end


def vvod()
	first = ARGV[0]
	mas = Array.new
	file = File.open("#{first}").each do |line|
		mas << line.chomp
	end
	mas
end
puts vvod().inspect

def vvod2()
	num = $stdin.gets.chomp
	mas = Array.new
	while !num.empty?
		#for i in 
		#mas = Array.new
		mas << num
	num = $stdin.gets.chomp
	end
	mas
end
puts vvod2().inspect

 # puts "Выберите цифру, каким образом вы хотите получить значение. \n 
 # 1 - чтение из файла \n 2 - ввод вручную"
 # number = gets.chomp.to_i
 # case number
 # 	when "1" then puts vvod()
 # 	when "2" then puts vvod2()
 # else
 # 	puts "Вы ввели не то число"
 # end