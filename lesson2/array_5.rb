# Заполнить массив числами от 10 до 100 с шагом 5

arr = []

(10..100).each do |num|
  arr << num if num % 5 == 0
end

puts arr
