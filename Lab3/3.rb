class Employee
	attr_reader :FIO,
	:Born_year, 
	:Phone,  
	:Email, 
	:Passport
	attr_accessor :Address,
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

	def Phone=(phone)
		@Phone= Employee.proverka_phone(phone)
	end

	def Born_year=(born_year)
		@Born_year= Employee.prov_date(born_year)
	end 


	def initialize(fio, born_year, phone, address, email, passport, *args)
		self.FIO= fio
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
		(num =~ /^([a-яА-Яa-zA-Z]+\s*-?\s*[a-яА-Яa-zA-Z]+|[a-яА-Яa-zA-Z]+(\s+[a-яА-Яa-zA-Z]+)?)\s+([a-яА-Яa-zA-Z]+\s*-?\s*[a-яА-Яa-zA-Z]+|[a-яА-Яa-zA-Z]+(\s+[a-яА-Яa-zA-Z]+)?)\s+([a-яА-Яa-zA-Z]+\s*-?\s*[a-яА-Яa-zA-Z]+|[a-яА-Яa-zA-Z]+(\s+[a-яА-Яa-zA-Z]+)?)$/) != nil
	end

	def self.prov_fio(num)
		raise "что-то не то" if !self.fio(num) 
		num.strip.gsub(/\s+/, " ").gsub(/\s*-\s*/, "-").gsub(/[a-яА-Я]+/, &:capitalize)
	end

	def self.date(num)
		(num =~ /^\d{1,2}.\d{1,2}.\d{2,4}$/)!=nil
	end

	def self.prov_date(num)
		raise "невенная дата" if self.date(num) == false
		temp = num.split(".")
	
		for i in 0..1
			temp[i].insert(0, "0") if temp[i].length < 2		
		end

		temp[2].insert(0, "20") if temp[2].length < 4

		d = "#{temp[0]}.#{temp[1]}.#{temp[2]}"
	end

	def self.phone(num)
		(num =~ /^(8|\+7)([\s\(\)\-]*\d){10}$/)!=nil 
	end

	def self.proverka_phone(num)
		raise "неверный номер" if self.phone(num) == false
		num.strip.gsub(/\s+/, "")
		num.insert(1, "-")
		num.insert(5, "-")
	end

	def self.email(num)
		(num =~ /^[\.\w]+@\w+.\w+$/) != nil
	end

	def self.iskluch_email(num)
		raise "Почта неверна" if self.email(num) == false # raise - выдает исключение
		num.downcase
	end

	def self.passport(num)
		(num =~ /^(\d\s*){10}$/) != nil
	end

	def self.prox_passport(num)
		raise "серия и номер неверно введены" if self.passport(num) == false
		num.strip.gsub(/\s+/, " ")
	end

	def to_s
		return "#{self.FIO} 
#{self.Born_year}
#{self.Phone}
#{self.Address}
#{self.Email} 
#{self.Passport}
#{self.Stag_rab}
#{self.Last_work}
#{self.Job_title}
#{self.Salary}"
	end


	 def show()
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
# puts Employee.prov_fio("Салтыков - щЕдрин Иван-Руслан Ахмед заде")
# puts Employee.prox_passport("1234 674997")
# puts Employee.proverka_phone("89283325909")
# puts Employee.prov_date("1.2.2021")
# puts Employee.iskluch_email("glinovanad@gmail.com")

