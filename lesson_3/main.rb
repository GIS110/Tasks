# main.rb
# Программа для проверки созданных классов Station, Route и Train

require_relative 'lib/route.rb'
require_relative 'lib/train.rb'
require_relative 'lib/station.rb'

route_1 = Route.new('Москва', 'Санкт-Петербург')

route_1.add_station('Бологое', 2)
route_1.add_station('Уфа', 3)
route_1.add_station('Сочи', 7)
route_1.add_station('Казань', 3)
route_1.add_station('Н.Новгород', 2)

route_2 = Route.new('Брест', 'Владивосток')
route_2.add_station('Владимир', 2)
route_2.add_station('Псков', 2)

route_1.info

route_1.delete_station('Бологое')
puts 'deleted_station route_1'

route_1.info

train_1 = Train.new('236-transit', 'passenger', 10)
train_2 = Train.new('38-heavy', 'cargo', 20)
train_3 = Train.new('61-superheavy', 'cargo', 40)
train_4 = Train.new('147-regular', 'passenger', 12)

puts train_1.train

train_1.set_route(route_1.route)
train_2.set_route(route_1.route)
train_3.set_route(route_1.route)
train_4.set_route(route_2.route)

puts train_1.train

puts Station.all

train_1.wagon_del
puts train_1.number_of_wagons

Station.train_list('Москва')
Station.train_list('Брест')

train_1.train_on_route

Station.train_list('Москва')
puts train_1.train
puts '========================================='
train_1.move_forward
puts train_1.previous_station.inspect
puts train_1.current_station.inspect
puts train_1.next_station.inspect
Station.train_list('Н.Новгород')
puts train_1.train
puts '========================================='
train_1.move_forward
puts train_1.previous_station.inspect
puts train_1.current_station.inspect
puts train_1.next_station.inspect
Station.train_list('Казань')
puts train_1.train
puts '========================================='
train_1.move_back
puts train_1.previous_station.inspect
puts train_1.current_station.inspect
puts train_1.next_station.inspect
Station.train_list('Н.Новгород')
puts train_1.train
puts '========================================='
train_1.move_forward
puts train_1.previous_station.inspect
puts train_1.current_station.inspect
puts train_1.next_station.inspect
Station.train_list('Казань')
puts train_1.train
puts '========================================='
train_1.move_forward
puts train_1.previous_station.inspect
puts train_1.current_station.inspect
puts train_1.next_station.inspect
Station.train_list('Уфа')
puts train_1.train
puts '========================================='
train_1.move_forward
puts train_1.previous_station.inspect
puts train_1.current_station.inspect
puts train_1.next_station.inspect
Station.train_list('Санкт-Петербург')
puts train_1.train
puts '========================================='
train_1.move_forward
puts train_1.previous_station.inspect
puts train_1.current_station.inspect
puts train_1.next_station.inspect
Station.train_list('Санкт-Петербург')
puts train_1.train
puts '========================================='
train_1.move_back
puts train_1.previous_station.inspect
puts train_1.current_station.inspect
puts train_1.next_station.inspect
Station.train_list('Уфа')
puts train_1.train
puts '========================================='
train_1.move_back
puts train_1.previous_station.inspect
puts train_1.current_station.inspect
puts train_1.next_station.inspect
Station.train_list('Казань')
puts train_1.train
puts '========================================='
train_1.move_back
puts train_1.previous_station.inspect
puts train_1.current_station.inspect
puts train_1.next_station.inspect
Station.train_list('Н.Новгород')
puts train_1.train
puts '========================================='
train_1.move_back
puts train_1.previous_station.inspect
puts train_1.current_station.inspect
puts train_1.next_station.inspect
Station.train_list('Москва')
puts train_1.train
puts '========================================='
train_1.move_back
puts train_1.previous_station.inspect
puts train_1.current_station.inspect
puts train_1.next_station.inspect
Station.train_list('Москва')
puts train_1.train

puts Station.all
