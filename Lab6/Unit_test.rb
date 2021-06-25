current_path = File.dirname(__FILE__)
require 'test/unit'
require_relative "Employee.rb"

class Employee_Test < Test::Unit::TestCase

	def setup
  		@object = Employee.new("1","Glin Nad Vic","3.5.26", "89283325909", "selezneva","sdf@gmail.com", "1234 123456", "0") 
  	end

	def test_fio
		#assert_equal "Glin Nad Vic", @object.FIO
		 assert_equal "Glin Nad Vic", @object.FIO=("glin nad vic")
	end

	def test_born_year
		assert_equal "13.05.2026", @object.Born_year=("13.5.26") 	
	end

	def test_phone
		assert_equal "89283325909", @object.Phone=("89283325909") 	
	end

	def address_test
		assert_equal "Selezneva", @object.Address=("selezneva")	
	end

	def email_test
		assert_equal "sdf@gmail.ru", @object.Email=("sdf@gmail.com") 	
	end

	def passport_test
		assert_equal "1234 123456", @object.Passport=("123445 153") 	
	end

end

# object = Employee.new('Glin Nad Vic','3.5.26', '89283325909', 'selezneva', 'sdf@gmail.com', '1234 123456', '0')
