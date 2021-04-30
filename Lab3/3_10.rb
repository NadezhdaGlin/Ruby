current_path = File.dirname(__FILE__)
require_relative "3.rb"

class TerminalViewListEmployee
	attr_accessor :Mas
	def initialize()
		self.Mas= Array.new()
	end

	def chek()
		puts "Введите ФИО"
		fio = gets.chomp
		puts "Введите Дату"
		date = gets.chomp
		puts "Введите телефон"
		phone = gets.chomp
		puts "Адрес"
		addr = gets.chomp
		puts "Введите email"
		mail = gets.chomp
		puts "Введите паспорт"
		pas = gets.chomp
		puts "Стаж работы"
		st = gets.chomp.to_i
		if st > 0
			puts "Прошлое место работы"	
			lastwork = gets.chomp
			puts "Наименование"
			jobtitle = gets.chomp
			puts "Зарплата"
			salary = gets.chomp.to_i
			self.Mas << Employee.new(fio, date, phone, addr, mail, pas, st, lastwork, jobtitle, salary)
		else
			self.Mas << Employee.new(fio, date, phone, addr, mail, pas, st)
		end
	end

end

vvod = TerminalViewListEmployee.new()
puts vvod.chek()


