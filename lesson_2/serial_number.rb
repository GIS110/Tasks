# Заданы три числа, которые обозначают число, месяц, год (запрашиваем у пользователя).
# Найти порядковый номер даты, начиная отсчет с начала года. Учесть, что год может быть високосным.

days_of_months = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

print 'Введите день месяца: '
day = gets.to_i

print 'Введите  номер месяца: '
month = gets.to_i

print 'Введите год: '
year = gets.to_i

leap_year =
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  elsif year % 4 == 0
    true
  else
    false
  end

days_of_months[1] = 29 if leap_year

serial_number = day + days_of_months.take(month - 1).sum

puts "Порядковый номер этой даты: #{serial_number}"
