class BusStop

  attr_accessor :queue, :name

  def initialize(name)
    @name = name
    @queue = []
  end

  def add_person_to_queue(person)
    @queue.push(person)
  end

end
