puts "Какой ваш любимый язык?"
first = gets.chomp.downcase.strip
#puts "Какой ваш любимый язык?"
if first === "ruby"
	puts "Да вы подлиза ( ͡° ͜ʖ ͡°)"
elsif first === "python"
	puts "Python, конечно, класс, но не ( ͡° ͜ʖ ͡°)" 
elsif first === "c#"
	puts "C#?, не"
else puts "Скоро будет Ruby (・`ω´・)"	
end
#puts "#{first}"