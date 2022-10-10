# ideal_weight

print "Ваше имя? "
user_name = gets.chomp
user_name.capitalize!

print "Ваш рост, в см? "
height = Integer(gets.chomp)

ideal_weight = (height - 110) * 1.15

if ideal_weight < 0
  puts 'Ваш вес уже оптимальный!'
else
  puts "#{user_name}, при Вашем росте #{height} см, идеальный вес будет #{ideal_weight} кг"
end
