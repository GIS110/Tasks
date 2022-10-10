# quadratic_equation

print "Введите коэффициент а = "
a = Float(gets.chomp)

print "Введите коэффициент  b = "
b = Float(gets.chomp)

print "Введите коэффициент c = "
c = Float(gets.chomp)

d = b ** 2 - 4 * a * c

if d > 0

  x1 = (-1 * b + Math.sqrt(d)) / (2 * a)
  x2 = (-1 * b - Math.sqrt(d)) / (2 * a)

  puts "Дискриминант D=#{d}, корня два: X1=#{x1} и X2=#{x2}."

elsif d == 0
  puts "Дискриминант D=#{d}, корень один: X=#{-1 * b / (2 * a)}."

else
    puts "Дискриминант D=#{d}, Корней нет!"
end
