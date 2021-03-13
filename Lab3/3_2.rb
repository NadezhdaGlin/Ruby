c_p = File.dirname( __FILE__)
require "#{c_p}/Employee.rb"

class TestEmployee

	def self.getRandomEmp
		fio = [
			"Иванов Иван Иванович", "Петров Геннадий Павлович",
			"Изюмов Кекс Ильич", "Зюганова Зинаида Павловна",
			"Салтыков-Щедрин Уляля", "Глинова Надежда Викторовна",
			"Реутов Роман Владимирович"
		]

		birth_day = [
			"03.05.2001", "29.07.2000", "01.01.2001", "14.12.1956",
			"05.06.2000", "15.02.2000", "14.02.2001", "23.07.1980",
			"08.02.1994", "25.06.1972"
		]

		phone = [
			"+79185612963", "+79185346961", "+79186475963", "+79185312433",
			"+79243643657", "+79145612233", "+79185312923"
		]

		address = [
			"Краснодар, Ул Петрова, Дом Иванова, 56", "Краснодар, Ул Красных Партизан 123",
			"Краснодар, Ул Ставропольская 149", "Краснодар, Ул Ленина 24", "Яблоновский Ул Надежды 20",
			"Санкт-Петербург, Ул Петра, 25"
		]

		email = [
			"boy@mail.ru", "cowboy@gmail.com", "prettyCowBoy@rambler.ru",
			"yandexMan@yandex.ru", "girl@maik.ru", "superGirl@gmail.com"
		]

		passport = [
			"0315 123456", "0612 142556", "1531 154643", "1265 012343",
			"1235 123542"
		]

		spec = [
			"Диванный эксперт", "Аналитик", "Дегустатор", "Киберспортсмен",
			"Повар", "Блинчикомес"
		]

		last_work = [
			"Ресторан 'У Гали'", "Бутик 'Рубин'", "Магазин шуток 'Отвал бошки'"
		]

		exp = (1..7).to_a

		if rand() > 0.5
			return Employee.new(fio.sample, birth_day.sample, phone.sample, address.sample, email.sample, passport.sample, spec.sample, exp.sample , last_work.sample, last_work.sample, rand() * 25000, spec.sample )
		else
			return Employee.new(fio.sample, birth_day.sample, phone.sample, address.sample, email.sample, passport.sample, spec.sample, last_work.sample)
		end
	end 
end

puts TestEmployee.getRandomEmp