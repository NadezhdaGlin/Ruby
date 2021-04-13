class Employee
	attr_accessor :FIO, 
	:Born_year, 
	:Phone, 
	:Address, 
	:Email, 
	:Passport,
	:Stag_rab,
	:Last_work,
	:Job_title,
	:Salary

	def FIO=(fio)
		@FIO= Employee.prov_fio(fio)		
	end

	def Email=(email)
		@Email= Employee.iskluch_email(email)
	end

	def Passport=(passport)
		@Passport= Employee.prox_passport(passport)	
	end

	def initialize(fio, born_year, phone, address, email, passport, *args)
		self.FIO = fio
		self.Born_year = born_year
		self.Phone = phone
		self.Address = address
		self.Email = email
		self.Passport = passport
		self.Stag_rab = " "
		self.Last_work = " "
		self.Job_title = " "
		self.Salary = 0

		if args.size > 0
			self.Stag_rab, self.Last_work, self.Job_title, self.Salary = args
		end

	end

	def self.fio(num)
		(num =~ /^([a-яА-Я]+\s*-?\s*[a-яА-Я]+|[a-яА-Я]+(\s+[a-яА-Я]+)?)\s+([a-яА-Я]+\s*-?\s*[a-яА-Я]+|[a-яА-Я]+(\s+[a-яА-Я]+)?)\s+([a-яА-Я]+\s*-?\s*[a-яА-Я]+|[a-яА-Я]+(\s+[a-яА-Я]+)?)$/) != nil
	end

	def self.prov_fio(num)
		raise "что-то не то" if !self.fio(num) 
		num.strip.gsub(/\s+/, " ").gsub(/\s*-\s*/, "-").gsub(/[a-яА-Я]+/, &:capitalize)
	end


	def self.email(num)
		(num =~ /^[\.\w]+@\w+.\w+$/) != nil
	end

	def self.iskluch_email(num)
		raise "Почта не верна" if self.email(num) == false # raise - выдает исключение
		num.downcase
	end

	def self.passport(num)
		(num =~ /^(\d\s*){10}$/) != nil
	end

	def self.prox_passport(num)
		raise "серия и номер не верно введены" if self.passport(num) == false
		num.strip.gsub(/\s+/, " ")
	end


	def to_s
		return "ФИО: #{self.FIO} 
Год рождения: #{self.Born_year}
Телефон: #{self.Phone}
Адрес: #{self.Address}
E-mail: #{self.Email} 
Паспорт: #{self.Passport}
Стаж работы: #{self.Stag_rab}
Прошлое место работы: #{self.Last_work}
Наименование: #{self.Job_title}
Зарплата: #{self.Salary}"
	end

end

# human = Employee.new("Агата Кристи", "1463", "+79282462185", "London", "detectiv@gmail.com", "2345 467345", 30, "writer", "Company", 12000)
# first = TestEmployee.new("ОХАЙ-ЙО")
# puts ("#{first}\nsay: #{first.Say}")
# puts human
puts Employee.prov_fio("Салтыков - щЕдрин Иван-Руслан Ахмед заде")
puts Employee.prox_passport("1234 674997")

