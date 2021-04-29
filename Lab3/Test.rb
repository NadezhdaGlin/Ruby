current_path = File.dirname(__FILE__)
require_relative "3.rb"

class TestEmployee

	# puts "Введите дату"require
	def self.test(num)
		case true
			when Employee.date(num)
				puts "Дата #{Employee.prov_date(num)}"

			when Employee.phone(num)
				puts "Телефон #{Employee.proverka_phone(num)}"

			when Employee.fio(num)
				puts "ФИО #{Employee.prov_fio(num)}"

			when Employee.email(num)
				puts "Email #{Employee.iskluch_email(num)}"

			else
				puts "Да пошло оно все"
		end
	end
end

# puts Employee.prov_date("5.03.1020")

# num = gets.chomp
# TestEmployee.test("Глинова Надежда Викторовна")
TestEmployee.test(gets.chomp)
# puts Employee.prov_date("7.5.2010")









# num = gets.chomp

# case num
# when num == Employee.prov_fio(num) then puts "Добропожаловать , #{num}"
# when num == Employee.prov_date(num) then puts "Дата, #{num}"
# end

# если введет сначала дату, то эта хрень сравниться с хренью из кейса
# и если она подходит, то выводится 

# puts ("Вводите")
# num = gets.chomp
# puts Employee.prov_date("#{num}")
# puts Employee.iskluch_email("#{num}")
# puts Employee.prox_passport("#{num}")
# puts Employee.proverka_phone("#{num}")

# puts human = Employee.new("Seraphine", "2020", "+76785438609", "LOL", "Riot@gmail.com", "0320 123456", 10, "Game", "Saport", 100)



# class TestEmployee < Employee 
# 	attr_accessor :Say
# 	def initialize (say)
# 		super("Glinova Nadya Victorovna", "2019", "123456", "Анапа", "nadyaThan@gmail.com", "0320 123456", 10, "Hogw", "Happiness", 100)
# 		self.Say = say
# 	end

# 	def to_s
# 		return "#{super}\nФраза: #{self.Say}"
# 	end
# end


# def date(num)
# 	temp = num.split(".")
	
# 	for i in 0..1
# 		temp[i].insert(0, "0") if temp[i].length < 2		
# 	end

# 	temp[2].insert(0, "20") if temp[2].length < 4

# 	d = "#{temp[0]}.#{temp[1]}.#{temp[2]}"
# end

# human = TestEmployee.new("HAYYOOO")
# puts human
# puts date("7.4.20")