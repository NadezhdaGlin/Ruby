print "Введите а: "
a = gets
print "Введите b: "
b = gets
sum = a.to_i + b.to_i 
pr = a.to_i * b.to_i
del = a.to_i / b.to_i
v = a.to_i - b.to_i
ost = a.to_i % b.to_i
step = a.to_i ** b.to_i
puts ("Результат сложения: " + sum.to_s)
puts ("Результат умножения: " + pr.to_s)
puts ("Результат деления: " + del.to_s)
puts ("Результат вычитания: " + v.to_s)
puts ("Остаток от деления: " + ost.to_s)
puts ("Результат возведения в степень: " + step.to_s)
