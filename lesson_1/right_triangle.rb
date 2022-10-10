# right_triangle

print "1-ая сторона треугольника? "
first_side = Float(gets.chomp)

print "2-ая сторона  треугольника? "
second_side = Float(gets.chomp)

print "3-ая сторона  треугольника? "
third_side = Float(gets.chomp)


if first_side >= second_side && first_side >= third_side
  c, a, b = first_side, second_side, third_side
elsif second_side >= first_side && second_side >= third_side
  a, c, b = first_side, second_side, third_side
elsif third_side >= second_side && third_side >= first_side
  a, b, c = first_side, second_side, third_side
end

print "Этот треугольник  "

if first_side == second_side && second_side == third_side
  print '- равносторонний'
elsif c ** 2 == a ** 2 + b ** 2
  print '- прямоугольный'
elsif first_side == second_side || second_side == third_side || first_side == third_side
  print '- равнобедренный'
else
  print '- разносторонний'
end
