require 'net/http'
require 'uri'

class Parameters

	def self.data
		puts "Введите параметры перевозимого груза - вес(кг), длина(см), ширина(см), высота(см)"
		puts "Вес"
		weight = gets.chomp.to_f
		puts "длина"
		length = gets.chomp.to_f
		puts "ширина"
		width = gets.chomp.to_f
		puts "высота"
		height = gets.chomp.to_f
		puts "Введите пункт отправления и пункт назначения"
		puts "пункт отправления"
		origin_addresses = gets.chomp.to_s
		puts "пункт назначения"
		price = 0
		destination_addresses = gets.chomp.to_s

		if (length/100) * (width/100) * (height/100) < 1
			puts "цена"
			price = 1

		elsif (length/100) * (width/100) * (height/100) > 1 && weight < 10
			puts "цена"
			price = 2

		elsif (length/100) * (width/100) * (height/100) > 1 && weight > 10
			puts "цена"
			price = 3	
		end	

		{weight:weight,
			length:length,
		  	width:width, 
		  	height:height, 
		  	origin_addresses:origin_addresses, 
		  	destination_addresses:destination_addresses,
		  	price:price
		}
		# origins = gets.chomp.to_i
		# uri = URI('https://api.distancematrix.ai/distancematrix/?origins=51.4822656,-0.1933769&destinations=51.4994794,-0.1269979&key=BZbcixODuFG0oTmHf7Uo0rNXFKJFD')
		# # origins=51.4822656,-0.1933769&destinations=51.4994794,-0.1269979
		# puts Net::HTTP.get(uri)
	end

end
puts Parameters.data
# 	attr_accessor :Weight,
# 	:Length,
# 	:Width,
# 	:Height

# 	def initialize(options = {})
# 		self.Weight= options[:weight]
# 		self.Length= options[:length]
# 		self.Width= options[:width]
# 		self.Height= options[:height]
# 	end


# 	def show
# 		"Вес #{self.Weight} кг
# Длина #{self.Length} см
# Ширина #{self.Width} см
# Высота #{self.Height} см"
# 	end

# end
# puts "Введите параметры перевозимого груза - вес(кг), длина(см), ширина(см), высота(см)"
# puts Parameters.new(weight:gets.chomp, length:gets.chomp, width:gets.chomp, height:gets.chomp).show


	# def initialize (weight, length, width, height)
	# 	self.Weight= weight
	# 	self.Length= length
	# 	self.Width= width
	# 	self.Height= height
	# end

	# def to_s
	# 	"#{self.Weight}
	# 	#{self.Length}
	# 	#{self.Weight}
	# 	#{self.Height}"
	# end
