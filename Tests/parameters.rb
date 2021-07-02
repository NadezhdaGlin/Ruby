class Parameters

	def self.data
		puts "Введите параметры перевозимого груза - вес(кг), длина(см), ширина(см), высота(см)"
		puts "Вес"
		weight = gets.chomp.to_i
		puts "длина"
		length = gets.chomp.to_i
		puts "ширина"
		width = gets.chomp.to_i
		puts "высота"
		height = gets.chomp.to_i
		{weight:weight, length:length, width:width, height:height}
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
