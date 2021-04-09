def email(num)
	(num =~ /^[\.\w]+@\w+.\w+$/) != nil
end

def iskluch_email(num)
	raise "Почта не верна" if email(num) == false # raise - выдает исключение
	num.downcase
end


puts email("maksiveta2000@mail.ru")
puts iskluch_email("MAksivetA2000mail.ru")