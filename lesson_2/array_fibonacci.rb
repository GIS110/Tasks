# Заполнить массив числами фибоначчи до 100

first = 0
second = 1
arr = []

while first < 100
  arr << first
  first, second = second, first + second
end

puts arr
