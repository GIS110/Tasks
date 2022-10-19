=begin
Класс Train (Поезд):
Имеет номер (произвольная строка) и тип (грузовой, пассажирский) и количество вагонов, эти данные указываются при создании экземпляра класса
Может набирать скорость
Может возвращать текущую скорость
Может тормозить (сбрасывать скорость до нуля)
Может возвращать количество вагонов
Может прицеплять/отцеплять вагоны (по одному вагону за операцию, метод просто увеличивает или уменьшает количество вагонов).
Прицепка/отцепка вагонов может осуществляться только если поезд не движется.
Может принимать маршрут следования (объект класса Route).
При назначении маршрута поезду, поезд автоматически помещается на первую станцию в маршруте.
Может перемещаться между станциями, указанными в маршруте. Перемещение возможно вперед и назад, но только на 1 станцию за раз.
Возвращать предыдущую станцию, текущую, следующую, на основе маршрута
=end

class Train
  attr_reader :train, :previous_station, :next_station

  def initialize(number, type, number_of_wagons)
    @train = {
      number: number,
      type: type,
      number_of_wagons: number_of_wagons,
      speed: 0,
      route: nil,
      current_station: nil
    }
  end

  def go
    @train[:speed] = 60
  end

  def stop
    @train[:speed] = 0
  end

  def speed
    @train[:speed]
  end

  def number_of_wagons
    @train[:number_of_wagons]
  end

  def wagon_add
    if @train[:speed] == 0
      @train[:number_of_wagons] += 1
    end
  end

  def wagon_del
    if @train[:speed] == 0 && @train[:number_of_wagons] > 0
      @train[:number_of_wagons] -= 1
    end
  end

  def set_route(route)
    @train[:route] = route
    @train[:current_station] = @train[:route][0]
    Station.arrived(@train[:current_station], @train)
  end

  def train_on_route
    self.go
    Station.departed(@train)
  end

  def move_forward
    i = @train[:route].find_index(@train[:current_station])

    case i
    when 0...(@train[:route].size - 1)
      self.train_on_route
      self.stop

      @previous_station = @train[:current_station]
      @train[:current_station] = @train[:route][i + 1]
      @next_station = @train[:route][i + 2]
      Station.arrived(@train[:current_station], @train)
    else
      puts "Конечная станция !!!"
    end
  end

  def move_back
    i = @train[:route].find_index(@train[:current_station])

    case i
    when 1...(@train[:route].size)
      self.train_on_route
      self.stop

      @previous_station = @train[:current_station]
      @train[:current_station] = @train[:route][i - 1]
      @next_station = @train[:route][i - 2] if i > 1
      @next_station = nil if i <= 1
      Station.arrived(@train[:current_station], @train)
    else
      puts "Конечная станция !!!"
    end
  end

  def current_station
    @train[:current_station]
  end
end
