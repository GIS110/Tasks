# purchase amount
=begin
Сумма покупок. Пользователь вводит поочередно название товара, цену за единицу и кол-во купленного товара (может быть нецелым числом).
Пользователь может ввести произвольное кол-во товаров до тех пор, пока не введет "стоп" в качестве названия товара.
На основе введенных данных требуетеся:
Заполнить и вывести на экран хеш, ключами которого являются названия товаров, а значением - вложенный хеш,
содержащий цену за единицу товара и кол-во купленного товара. Также вывести итоговую сумму за каждый товар.
Вычислить и вывести на экран итоговую сумму всех покупок в "корзине".
=end

shopping_cart = Hash.new
amount_of_purchases = 0

loop do
  print "Введите название товара (для завершения введите 'стоп'): "
  product_name = gets.chomp.capitalize

  break if product_name == 'Стоп'

  print 'Введите цену за единицу: '
  product_price = gets.chomp.to_f

  print 'Введите кол-во купленного товара: '
  product_quantity = gets.chomp.to_f

  shopping_cart[product_name] = {product_price => product_quantity}

  amount_of_purchases = amount_of_purchases + product_price * product_quantity
end

puts
puts shopping_cart
puts

shopping_cart.each do |name, hash_data|
  print "Наименование товара: #{name}, стоимость: "

  hash_data.each { |price, quantity| puts price * quantity}
end

puts "Итоговая сумма покупок: #{amount_of_purchases}"
