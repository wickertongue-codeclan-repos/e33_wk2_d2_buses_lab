require("pry")
require("minitest/autorun")
require("minitest/pride")
require_relative("../bus_stop")
require_relative("../person")

class BusStopTest < MiniTest::Test

  def setup
    @person = Person.new("Kevin", 37)
    @bus_stop = BusStop.new("Little France")
  end

  def test_bus_stop_has_name
    assert_equal("Little France", @bus_stop.name())
  end

  def test_add_person_to_queue
    assert_equal(1, @bus_stop.add_person_to_queue(@person).count)
  end

end
