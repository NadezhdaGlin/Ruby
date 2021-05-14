current_path = File.dirname(__FILE__)
require_relative "3.rb"
# file_write = File.open('Employee.txt', 'a') do |file| 
	# file.puts(a)
# end
class ListEmployee

	def initialize()
		@mas = Array.new()
	end

	def add(employee)
		# puts "Введите ФИО"
		# fio = gets.chomp
		# puts "Введите Дату"
		# date = gets.chomp
		# puts "Введите телефон"
		# phone = gets.chomp
		# puts "Адрес"
		# addr = gets.chomp
		# puts "Введите email"
		# mail = gets.chomp
		# puts "Введите паспорт"
		# pas = gets.chomp
		# puts "Стаж работы"
		# st = gets.chomp.to_i
		# if st > 0
		# 	puts "Прошлое место работы"	
		# 	lastwork = gets.chomp
		# 	puts "Наименование"
		# 	jobtitle = gets.chomp
		# 	puts "Зарплата"
		# 	salary = gets.chomp.to_i
			@mas << employee #Employee.new(fio, date, phone, addr, mail, pas, st, lastwork, jobtitle, salary)
	# 		file_write = File.open('Employee.txt', 'a') do |file| 
	# 			 file.puts(self.mas)
	# 		end
	# 	else
	# 		self.mas << Employee.new(fio, date, phone, addr, mail, pas, st)
	# 		file_write = File.open('Employee.txt', 'a') do |file| 
	# 			 file.puts(self.mas)
	# 		end
	# 	end
	end
	def read_from_file() #ПЕРЕДЕЛАТЬ под чтение из файла
		read_data = File.open('Employee.txt', 'r') do |file|
			while !file.eof?
				fio = file.readline().chomp.strip
				date = file.readline().chomp.strip
				phone = file.readline().chomp.strip
				addr = file.readline().chomp.strip
				mail = file.readline().chomp.strip
				pas = file.readline().chomp.strip
				st = file.readline().to_i
				if st > 0
					lastwork = file.readline().chomp.strip
					jobtitle = file.readline().chomp.strip
					salary = file.readline().to_i
					add(Employee.new(fio, date, phone, addr, mail, pas, st, lastwork, jobtitle, salary))
				else
					add(Employee.new(fio, date, phone, addr, mail, pas, st))
				end
			end
		end
	end
	
	def show() 
		str = ""
		@mas.each {|el| str = str + el.show + "\n"}
		str
	end

	def search_fio()
		
	end



end

object = ListEmployee.new()
# puts object.add()
object.read_from_file()
puts object.show
