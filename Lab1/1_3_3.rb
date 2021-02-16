puts "Какой ваш любимый язык?"
first = gets.chomp.downcase.strip
case first
when "ruby" then puts "Да вы подлиза ( ͡° ͜ʖ ͡°)"
when "python" then puts "Python, конечно, класс, но не ( ͡° ͜ʖ ͡°)" 
when "c#" then puts "C#?, не ( ͡° ͜ʖ ͡°)"
when "c" then puts "C?, не, Ruby лучше ( ͡° ͜ʖ ͡°)"
else 
	puts "Скоро будет Ruby (・`ω´・)"	
end
