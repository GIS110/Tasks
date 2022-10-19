=begin
Класс Route (Маршрут):
Имеет начальную и конечную станцию, а также список промежуточных станций. Начальная и конечная станции указываютсся при создании маршрута,
а промежуточные могут добавляться между ними.
Может добавлять промежуточную станцию в список
Может удалять промежуточную станцию из списка
Может выводить список всех станций по-порядку от начальной до конечной
=end

class Route
  attr_reader :route

  def initialize(start_station, end_station)
    @start_station = Station.new(start_station)
    @end_station = Station.new(end_station)
    @route = [@start_station.station_name, @end_station.station_name]
  end

  def add_station(station_name, position)
    case position - 1
    when 1...@route.size
      if @route.include?(station_name)
        nil
      else
        @station_name = Station.new(station_name)
        @route.insert(position - 1, @station_name.station_name)
      end
    else
      nil
    end
  end

  def delete_station(station_name)
    @route.delete(station_name)
    Station.all.delete(station_name)
  end

  def info
    puts "Маршрут поезда #{@route.first} - #{@route.last}:"
    @route.each_with_index { |station, i| puts "Станция №#{i+1} - #{station}"}
    puts "Всего станций: #{@route.size}"
  end
end
