c_p = File.dirname( __FILE__)
require "#{c_p}/Employee.rb"

def checkPhone?(phone)
	result = phone =~ /^(8|\+7)([\s\(\)\-]*\d){10}$/
	phone = phone.strip
	if Employee.checkPhone?(phone.strip)
		raise "Номер введен не верно"
	end

	digits = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
		numbers = phone.chars.filter { |i| digits.include?(i) }
		numbers.insert(1, "-")
		numbers.insert(5, "-")
	return result.nil?
end

