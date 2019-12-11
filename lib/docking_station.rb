class Docking_station
  attr_accessor :capacity

  DEFAULT_CAPACITY = 20

  def initialize (capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def dock(bike)
    fail 'Dock full!' if full?
    @bikes << bike
  end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end

private
attr_reader :bikes

  def full?
    bikes.count >= capacity
  end

  def empty?
    bikes.empty?
  end
end

class Bike
  def working?
    true
  end
end
