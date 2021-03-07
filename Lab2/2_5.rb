 # puts "Выберите цифру, каким образом вы хотите получить значение. \n 
 # 1 - чтение из файла \n 2 - ввод вручную"
 # number = $stdin.gets.chomp.to_i

def vvod()
	first = $stdin.gets.chomp
	mas = Array.new
	file = File.open("#{first}").each do |line|
		mas << line.chomp
	end
	file.close
	mas
end
# puts vvod().inspect

def vvod2()
	puts "Вводите\n"
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
# puts vvod2().inspect

case ARGV[0].chomp.to_i
 	when 1 then puts vvod()
 	when 2 then puts vvod2().inspect
 else
 	puts "Вы ввели не то число"
 end
 # puts "Выберите цифру, каким образом вы хотите получить значение. \n 
 # 1 - чтение из файла \n 2 - ввод вручную"
 # number = gets.chomp.to_i
 # case number
 # 	when "1" then puts vvod()
 # 	when "2" then puts vvod2()
 # else
 # 	puts "Вы ввели не то число"
 # end