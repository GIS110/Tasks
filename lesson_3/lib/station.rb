=begin
Класс Station (Станция):
Имеет название, которое указывается при ее создании
Может принимать поезда (по одному за раз)
Может возвращать список всех поездов на станции, находящиеся в текущий момент
Может возвращать список поездов на станции по типу (см. ниже): кол-во грузовых, пассажирских
Может отправлять поезда (по одному за раз, при этом, поезд удаляется из списка поездов, находящихся на станции).
=end

class Station
  @@stations = {}

  attr_reader :station_name

  def initialize(station_name)
    @station_name = station_name
    @@stations[@station_name] = []
  end

  def Station.arrived(station_name, train)
    @@stations[station_name] << train
  end

  def Station.departed(train)
    @@stations[train[:current_station]].delete(train)
  end

  def info
    "На станции: #{@station_name}, находятся следующие поезда: #{@@stations[@station_name]}"
  end

  def Station.all
    @@stations
  end

  def Station.train_list (station_name)
    puts "Список поездов на станции <#{station_name}>."

    cargo = []
    passenger = []

    @@stations[station_name].each do |train|
      cargo << train[:number] if train[:type] == 'cargo'
      passenger << train[:number] if train[:type] == 'passenger'
    end

    puts "Грузовых поездов #{cargo.size} шт.: "
    cargo.each_with_index { |number, i| puts "№#{i + 1} - #{number}"}

    puts "Пассажирских поездов #{passenger.size} шт.: "
    passenger.each_with_index { |number, i| puts "№#{i + 1} - #{number}"}
  end
end
