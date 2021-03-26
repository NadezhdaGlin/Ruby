#  Дана строка. Необходимо найти все даты, которые описаны в
# виде "31 февраля 2007"


require 'date'

def month(mes)
case mes
	when "января"
		return "01"
	when "февраля"
		return "02"
	when "марта"
		return "03"
	when "апреля"
		return "04"
	when "мая"
		return "05"
	when "июня"
		return "06"
	when "июля"
		return "07"
	when "августа"
		return "08"
	when "сентября"
		return "09"
	when "октября"
		return "10"
	when "ноября"
		return "11"
	when "декабря"
		return "12"
end
end

def kolvo(stroka)
	stroka.scan(/(\d{1,2})\s(января|февраля|марта|апреля|мая|июня|июля|августа|сентября|октябрь|ноября|декабря)\s(\d{4})/) do
		|i|
		i[1] = month(i[1])
		begin
    		Date.strptime(i.join(" "), "%d %m %Y")
    		puts i.join(" ")
		rescue

		end
	end
end

kolvo("31 февраля 1694, 41 марта 3572, ,Привет Рома, ,АААААААААААААААААА, 6 июля 1999, 15 января 1789")


