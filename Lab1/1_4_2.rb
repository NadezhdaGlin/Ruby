puts "Введите командум ОС: "
system STDIN.gets 
#puts STDIN.gets
puts "Введите команду языка Ruby:"
first = STDIN.gets
out = `#{first}`
puts ("было сложно, но вот: #{out}")