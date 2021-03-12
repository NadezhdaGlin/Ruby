class Employee

	def initialize(fio, birth_year, phone, address, email, passport, spec, *args) 
		self.fio = fio
		self.birth_year = birth_year
		self.phone = phone
		self.address = address
		self.email = email
		self.passport = passport
		self.spec = spec
		self.stag_rab = " "
		self.last_work = " "
		self.job_title = " "
		self.salary = 0

		if args.length > 0
			self.stag_rab, self.last_work, self.job_title, self.salary = args	
		end
	end

	def fio #геттер
		@fio
	end

	def fio=(fio) #сеттер
		@fio = fio
	end

	def birth_year
		@birth_year
	end

	def birth_year=(year)
		@birth_year = year
	end

	def phone
		@phone
	end

	def phone=(phone)
		@phone = phone 
	end

	def address
		@address
	end

	def address=(address)
		@address = address		
	end

	def email
		@email
	end

	def email=(mail)
		@email = mail
	end

	def passport
		@passport
	end

	def passport=(pass)
		@passport = pass
	end

	def spec
		@spec
	end

	def spec=(special)
		@spec = special
	end

	def stag_rab
		@stag_rab
	end

	def stag_rab=(stag)
		@stag_rab = stag		
	end

	def last_work
		@last_work
	end

	def last_work=(work)
		@last_work = work		
	end

	def job_title
		@job_title
	end

	def job_title=(title)
		@job_title = title
	end

	def salary
		@salary
	end

	def salary=(sal)
		@salary = sal		
	end

	def to_s
		 "Фио: #{@fio}\nГод рождения:#{@birth_year}\nТелефон:#{@phone}\nАдрес:#{@address}\ne-mail:#{@email}\nПаспортные данные:#{@passport}\nСпециальность#{@spec}\nСтаж работы:#{@stag_rab}\nПрошлое место работы:#{@last_work}\nНаименование должности:#{@job_title}\nЗарплата на предыдущем месте работы:#{@salary}"
	end

end
# emp = Employee.new("Glinova Nadya Victorovna", "2019", "123456", "Анапа", "nadyaThan@gmail.com", "0320 123456", "Fairy", 10, "Hogw", "Happiness", 100)
# puts emp
